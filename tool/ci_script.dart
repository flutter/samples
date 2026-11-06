// Copyright 2025 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: avoid_print

/// The CI entrypoint for this repo. Runs the analyzer, the formatter, and the
/// test suite over every package in the root `pubspec.yaml` workspace.
///
/// Usage, from the repo root:
///
/// ```
/// flutter pub get && dart tool/ci_script.dart
/// ```
///
/// See `tool/README.md` for how the skip lists and the drift check work.
library;

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';

/// Directory names that never contain a sample we should test: build output,
/// generated host-app scaffolding, and third-party dependency trees.
const _ignoredDirNames = <String>{
  '.dart_tool',
  '.android',
  '.ios',
  '.symlinks',
  'build',
  'Pods',
  'node_modules',
  'ephemeral',
};

Future<void> main(List<String> args) async {
  final rootDir = Directory.current;
  final pubspecFile = File(path.join(rootDir.path, 'pubspec.yaml'));
  if (!pubspecFile.existsSync()) {
    print('No pubspec.yaml in ${rootDir.path}. Run this from the repo root.');
    exit(1);
  }
  final pubspecYaml = loadYaml(await pubspecFile.readAsString()) as YamlMap;

  // Contains the full list of samples.
  final workspace = pubspecYaml['workspace'] as YamlList?;
  if (workspace == null) {
    print('No workspace found in pubspec.yaml');
    exit(1);
  }
  final workspacePaths = workspace.map((e) => e.toString()).toList();

  // CI always skips the samples on this list.
  final skipCiList = _stringList(pubspecYaml['skip_ci']);

  // CI will also skip samples on specific branches. This is useful when API
  // changes on the beta channel are causing CI to fail and there isn't a
  // solution that works on both beta and stable.
  final channel = await _getFlutterChannel();
  print('Current Flutter channel: $channel');

  final channelSkipList = _stringList(pubspecYaml['skip_ci_$channel']);
  if (channelSkipList.isNotEmpty) {
    print('Applying skips for channel "$channel": $channelSkipList');
  }

  // Packages deliberately kept out of the workspace. Keep this empty if you
  // can: anything listed here is invisible to CI.
  final excluded = _stringList(pubspecYaml['excluded_from_workspace']);

  if (!_checkWorkspaceDrift(rootDir, workspacePaths, excluded)) {
    exit(1);
  }

  // Pub workspace, so only run 'get' once.
  if (!await _runCommand('flutter', [
    'pub',
    'get',
  ], workingDirectory: rootDir.path)) {
    print('`flutter pub get` failed at the repo root. Aborting.');
    exit(1);
  }

  final skipped = <String>[];
  final packages = <String>[];
  for (final package in workspacePaths) {
    if (skipCiList.contains(package) || channelSkipList.contains(package)) {
      skipped.add(package);
    } else {
      packages.add(package);
    }
  }

  // Collect every failure rather than bailing on the first one. During a
  // release sweep you want the whole list, not one sample at a time.
  final failures = <String>[];
  for (final package in packages) {
    final packagePath = path.join(rootDir.path, package);
    print('\n== Testing \'$package\' ==');

    if (!await _runCommand('dart', [
      'analyze',
      '--fatal-infos',
      '--fatal-warnings',
    ], workingDirectory: packagePath)) {
      failures.add('$package: dart analyze');
    }

    // `--set-exit-if-changed` is what makes this a check. Without it the
    // formatter rewrites files in the CI checkout and always reports success,
    // so unformatted code reaches main.
    if (!await _runCommand('dart', [
      'format',
      '--output=none',
      '--set-exit-if-changed',
      '.',
    ], workingDirectory: packagePath)) {
      failures.add('$package: dart format (run `dart format .` in $package)');
    }

    if (Directory(path.join(packagePath, 'test')).existsSync()) {
      final packagePubspec = await File(
        path.join(packagePath, 'pubspec.yaml'),
      ).readAsString();
      final isFlutter = packagePubspec.contains('sdk: flutter');
      final ok = isFlutter
          ? await _runCommand('flutter', [
              'test',
              '--no-pub',
            ], workingDirectory: packagePath)
          : await _runCommand('dart', ['test'], workingDirectory: packagePath);
      if (!ok) failures.add('$package: tests');
    }
  }

  print('\n${'=' * 60}');
  print('CI summary (Flutter channel: $channel)');
  print('=' * 60);
  print('Packages checked: ${packages.length}');
  if (skipped.isNotEmpty) {
    print('Skipped (${skipped.length}): ${skipped.join(', ')}');
  }
  if (failures.isEmpty) {
    print('All checks passed.');
    return;
  }
  print('Failed (${failures.length}):');
  for (final failure in failures) {
    print('  - $failure');
  }
  exit(1);
}

/// Fails if a package exists on disk but is not in the workspace.
///
/// A sample that is missing from the workspace is invisible to CI, which is
/// how `add_to_app/ios_content_resizing` shipped with a test file that had
/// never once compiled. Add new samples to `workspace` in the root
/// `pubspec.yaml`, or to `excluded_from_workspace` if they truly belong out.
bool _checkWorkspaceDrift(
  Directory rootDir,
  List<String> workspacePaths,
  List<String> excluded,
) {
  final known = {...workspacePaths, ...excluded};
  final onDisk = <String>[];

  void walk(Directory dir) {
    for (final entity in dir.listSync(followLinks: false)) {
      final name = path.basename(entity.path);
      if (entity is Directory) {
        if (name.startsWith('.') || _ignoredDirNames.contains(name)) continue;
        walk(entity);
      } else if (entity is File && name == 'pubspec.yaml') {
        final relative = path.relative(
          path.dirname(entity.path),
          from: rootDir.path,
        );
        if (relative != '.') onDisk.add(relative);
      }
    }
  }

  walk(rootDir);

  final missing = onDisk.where((p) => !known.contains(p)).toList()..sort();
  final stale = known.where((p) => !onDisk.contains(p)).toList()..sort();

  if (missing.isEmpty && stale.isEmpty) {
    print('Workspace is in sync with ${onDisk.length} packages on disk.');
    return true;
  }

  if (missing.isNotEmpty) {
    print(
      '\nERROR: these packages exist on disk but are not in the root '
      'pubspec.yaml workspace, so CI never checks them:',
    );
    for (final p in missing) {
      print('  - $p');
    }
    print(
      'Add each one to `workspace`, or to `excluded_from_workspace` with a '
      'comment explaining why.',
    );
  }
  if (stale.isNotEmpty) {
    print(
      '\nERROR: these paths are listed in the root pubspec.yaml but do not '
      'exist on disk:',
    );
    for (final p in stale) {
      print('  - $p');
    }
  }
  return false;
}

List<String> _stringList(Object? node) => switch (node) {
  YamlList list => list.map((e) => e.toString()).toList(),
  _ => const <String>[],
};

/// Runs [executable], streaming its output. Returns true when it succeeded.
Future<bool> _runCommand(
  String executable,
  List<String> arguments, {
  String? workingDirectory,
}) async {
  final process = await Process.start(
    executable,
    arguments,
    workingDirectory: workingDirectory,
    runInShell: true,
    mode: ProcessStartMode.inheritStdio,
  );
  final exitCode = await process.exitCode;
  if (exitCode != 0) {
    print(
      'Command "$executable ${arguments.join(' ')}" failed with exit code '
      '$exitCode in $workingDirectory',
    );
    return false;
  }
  return true;
}

Future<String> _getFlutterChannel() async {
  try {
    final result = await Process.run('flutter', [
      '--version',
      '--machine',
    ], runInShell: true);
    if (result.exitCode != 0) {
      print(
        'Flutter version command failed with exit code ${result.exitCode}',
      );
      print('Stdout: ${result.stdout}');
      print('Stderr: ${result.stderr}');
      return 'unknown';
    }
    final machineInfo =
        jsonDecode(result.stdout as String) as Map<String, Object?>;
    return machineInfo['channel'] as String? ?? 'unknown';
  } catch (e) {
    print('Error detecting Flutter channel: $e');
    return 'unknown';
  }
}
