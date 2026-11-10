// Copyright 2025 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: avoid_print

/// Runs the CI suite locally against one or more Flutter channels.
///
/// Do not use this in GitHub Actions -- the workflow sets the channel itself
/// with `subosito/flutter-action` and calls `tool/ci_script.dart` directly.
/// This script exists so a maintainer can reproduce both legs of the CI matrix
/// on one machine before a release.
///
/// Usage, from the repo root:
///
/// ```
/// dart tool/ci_with_channel.dart -c stable,beta
/// ```
///
/// Switching channels redownloads the SDK, so the first run on a new channel
/// is slow. The original channel is always restored, including on failure.
library;

import 'dart:io';

import 'package:args/args.dart';
import 'package:path/path.dart' as path;

Future<void> main(List<String> args) async {
  final parser = ArgParser()
    ..addFlag(
      'help',
      abbr: 'h',
      negatable: false,
      help: 'Print this usage information.',
    )
    ..addOption(
      'channels',
      abbr: 'c',
      help:
          'Comma-separated list of channels to run on (e.g., stable,beta,main). '
          'Defaults to whichever channel is currently active.',
    );

  final ArgResults results;
  try {
    results = parser.parse(args);
  } on FormatException catch (e) {
    print('${e.message}\n');
    print(parser.usage);
    exit(64);
  }

  if (results['help'] as bool) {
    print('Runs tool/ci_script.dart against one or more Flutter channels.\n');
    print(parser.usage);
    return;
  }

  final rootDir = Directory.current;
  if (!File(path.join(rootDir.path, 'pubspec.yaml')).existsSync()) {
    print('No pubspec.yaml in ${rootDir.path}. Run this from the repo root.');
    exit(1);
  }

  final channelsArg = results['channels'] as String?;
  final channels =
      channelsArg
          ?.split(',')
          .map((c) => c.trim())
          .where((c) => c.isNotEmpty)
          .toList() ??
      const <String>[];

  final originalChannel = await _getCurrentChannel();
  final failedChannels = <String>[];

  try {
    if (channels.isEmpty) {
      print('Running on current channel: ${originalChannel ?? 'unknown'}');
      if (!await _runCI(rootDir)) {
        failedChannels.add(originalChannel ?? 'current');
      }
    } else {
      for (final channel in channels) {
        print('\n=== Switching to channel: $channel ===');
        if (!await _run('flutter', ['channel', channel]) ||
            !await _run('flutter', ['upgrade'])) {
          print('Could not switch to "$channel". Skipping it.');
          failedChannels.add('$channel (switch failed)');
          continue;
        }
        await _run('flutter', ['doctor']);
        // Keep going after a failing channel so one run reports both legs.
        if (!await _runCI(rootDir)) failedChannels.add(channel);
      }
    }
  } finally {
    if (channels.isNotEmpty &&
        originalChannel != null &&
        !channels.contains(originalChannel)) {
      print('\n=== Switching back to original channel: $originalChannel ===');
      await _run('flutter', ['channel', originalChannel]);
    }
  }

  if (failedChannels.isNotEmpty) {
    print('\nCI failed on: ${failedChannels.join(', ')}');
    exit(1);
  }
  print('\nCI passed on every requested channel.');
}

/// Delegates to `tool/ci_script.dart`, the same entrypoint GitHub Actions runs.
///
/// Shelling out rather than reimplementing the sweep is deliberate: an earlier
/// version of this script had its own copy of the loop, which silently ignored
/// the `skip_ci` lists and so disagreed with real CI.
Future<bool> _runCI(Directory rootDir) => _run('dart', [
  path.join('tool', 'ci_script.dart'),
], workingDirectory: rootDir.path);

Future<String?> _getCurrentChannel() async {
  final result = await Process.run('flutter', ['channel'], runInShell: true);
  if (result.exitCode != 0) return null;
  return RegExp(
    r'^\*\s+(\S+)',
    multiLine: true,
  ).firstMatch(result.stdout as String)?.group(1);
}

Future<bool> _run(
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
      '$exitCode',
    );
    return false;
  }
  return true;
}
