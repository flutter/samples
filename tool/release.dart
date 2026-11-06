// Copyright 2025 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: avoid_print

/// Prepares every sample in the workspace for a new Flutter release.
///
/// For each package in the root `pubspec.yaml` workspace this script:
///   1. rewrites `environment.sdk` to the active SDK's Dart version,
///   2. re-resolves the workspace once,
///   3. runs the analyzer, rewrites formatting, and runs the tests,
///   4. writes every problem it saw to `logs/release_logs_<timestamp>.log`.
///
/// Unlike `tool/ci_script.dart`, this script *fixes* formatting instead of
/// checking it -- it is meant to be run by a maintainer who will review and
/// commit the diff. Run it on the channel you are releasing for:
///
/// ```
/// flutter channel beta && flutter upgrade
/// dart tool/release.dart --dry-run   # preview
/// dart tool/release.dart
/// ```
///
/// See `docs/release_process.md` for where this fits in the release.
library;

import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:io/ansi.dart';
import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';
import 'package:yaml_edit/yaml_edit.dart';

const String logDir = 'logs';

void main(List<String> arguments) async {
  final runner = ReleaseScriptRunner();
  await runner.run(arguments);
}

/// The outcome of processing a single package.
class ProjectResult {
  ProjectResult(this.path, this.issues);

  final String path;

  /// Human-readable descriptions of what failed. Empty means success.
  final List<String> issues;

  bool get passed => issues.isEmpty;
}

class ReleaseScriptRunner {
  late final File _logFile;
  bool _isDryRun = false;
  bool _skipTests = false;

  Future<void> run(List<String> arguments) async {
    final parser = ArgParser()
      ..addFlag(
        'help',
        abbr: 'h',
        negatable: false,
        help: 'Print this usage information.',
      )
      ..addFlag(
        'dry-run',
        negatable: false,
        help: 'Prints the commands that would be executed, but does not run them.',
      )
      ..addFlag(
        'skip-tests',
        negatable: false,
        help: 'Only update constraints, analyze, and format. Skips tests.',
      )
      ..addFlag(
        'no-bump',
        negatable: false,
        help: 'Leave `environment.sdk` alone and only analyze, format, and test.',
      );

    final ArgResults argResults;
    try {
      argResults = parser.parse(arguments);
    } on FormatException catch (e) {
      print('${e.message}\n');
      print(parser.usage);
      exit(64);
    }
    if (argResults['help'] as bool) {
      print('Prepares every sample in the workspace for a Flutter release.\n');
      print(parser.usage);
      return;
    }
    _isDryRun = argResults['dry-run'] as bool;
    _skipTests = argResults['skip-tests'] as bool;
    final noBump = argResults['no-bump'] as bool;

    if (!File('pubspec.yaml').existsSync()) {
      log(
        red.wrap('No pubspec.yaml here. Run this from the repo root.'),
        stderr,
      );
      exit(1);
    }

    _setupLogging();

    log(
      styleBold.wrap(
        'Flutter Monorepo Update Script Started: ${DateTime.now()}',
      ),
      stdout,
    );
    log(blue.wrap('Log file: ${_logFile.path}')!, stdout);

    if (_isDryRun) {
      log(yellow.wrap('--- DRY RUN MODE ---')!, stdout);
    }

    if (!await _isFlutterInstalled()) {
      log(red.wrap('Flutter is not installed or not in PATH')!, stderr);
      exit(1);
    }

    final dartVersion = await _getDartVersion();
    if (dartVersion == null) {
      log(red.wrap('Failed to get Dart SDK version.'), stderr);
      exit(1);
    }
    final channel = await _getChannel();
    log(
      blue.wrap('Using Dart SDK version: $dartVersion (channel: $channel)'),
      stdout,
    );

    final packages = await _getWorkspacePackages();
    if (packages.isEmpty) {
      log(
        yellow.wrap('No packages found in the root pubspec.yaml workspace.'),
        stdout,
      );
      exit(0);
    }

    // Honor the same skip lists CI uses, so this script and CI agree about
    // which samples are expected to be green.
    final skips = await _getSkips(channel);
    final targets = packages.where((p) => !skips.contains(p)).toList();
    final skipped = packages.where(skips.contains).toList();

    log(
      blue.wrap(
        'Found ${packages.length} package(s); processing ${targets.length}.',
      ),
      stdout,
    );
    if (skipped.isNotEmpty) {
      log(
        yellow.wrap('Skipping (per skip lists): ${skipped.join(', ')}'),
        stdout,
      );
    }

    // Rewrite constraints for every package first, then resolve the workspace
    // once. Resolving per package would fail on the packages not yet bumped.
    if (!noBump) {
      log(
        blue.wrap('\nUpdating SDK constraints to use Dart $dartVersion'),
        stdout,
      );
      // The root pubspec is part of the workspace resolution and needs the
      // same floor, but it is not listed inside its own `workspace:` key.
      for (final target in ['.', ...targets]) {
        if (!await _updateSdkConstraints(target, dartVersion)) {
          log(
            red.wrap('Failed to update SDK constraints for $target'),
            stderr,
          );
          exit(1);
        }
      }
      final (resolved, output) = await _runCommand('flutter', [
        'pub',
        'get',
      ], workingDirectory: '.');
      if (!resolved) {
        log(
          red.wrap(
            '`flutter pub get` failed after bumping constraints. The SDK '
            'floor is probably higher than the active SDK, or a dependency '
            'has no compatible version. Aborting.',
          ),
          stderr,
        );
        logToFile('- Workspace resolution failed after bump');
        logToFile('-- $output');
        exit(1);
      }
    }

    final results = <ProjectResult>[];
    for (final packagePath in targets) {
      results.add(await _processProject(packagePath));
    }

    _printSummary(results, skipped);

    log(
      styleBold.wrap(
        '\nFlutter Monorepo Update Script Completed: ${DateTime.now()}',
      ),
      stdout,
    );

    if (results.any((r) => !r.passed)) {
      exit(1);
    }
  }

  void _setupLogging() {
    final logsDir = Directory(logDir);
    if (!logsDir.existsSync()) {
      logsDir.createSync(recursive: true);
    }
    final timestamp = DateTime.now().toIso8601String().replaceAll(':', '-');
    _logFile = File(p.join(logDir, 'release_logs_$timestamp.log'));
  }

  void log(String? message, IOSink sink) {
    if (message == null) return;
    sink.writeln(message);
  }

  void logToFile(String? message) {
    if (message == null) return;
    _logFile.writeAsStringSync(
      '\n${_stripAnsiCodes(message)}',
      mode: FileMode.append,
    );
  }

  Future<bool> _isFlutterInstalled() async {
    try {
      final result = await Process.run('flutter', ['--version']);
      return result.exitCode == 0;
    } catch (e) {
      return false;
    }
  }

  Future<Map<String, Object?>?> _flutterMachineInfo() async {
    try {
      final result = await Process.run('flutter', [
        '--version',
        '--machine',
      ], runInShell: true);
      if (result.exitCode != 0) return null;
      return jsonDecode(result.stdout as String) as Map<String, Object?>;
    } catch (e) {
      log(red.wrap('Error reading Flutter version info: $e'), stderr);
      return null;
    }
  }

  Future<String?> _getDartVersion() async {
    final info = await _flutterMachineInfo();
    // e.g. "3.14.0 (build 3.14.0-315.3.beta)" -> "3.14.0"
    return (info?['dartSdkVersion'] as String?)?.split(' ').first;
  }

  Future<String> _getChannel() async {
    final info = await _flutterMachineInfo();
    return (info?['channel'] as String?) ?? 'unknown';
  }

  Future<List<String>> _getWorkspacePackages() async {
    try {
      final yaml =
          loadYaml(await File('pubspec.yaml').readAsString()) as YamlMap;
      final workspace = yaml['workspace'] as YamlList?;
      if (workspace != null) {
        return workspace.map((node) => node.toString()).toList();
      }
    } catch (e) {
      log(red.wrap('Error reading workspace packages: $e'), stderr);
    }
    return [];
  }

  /// `skip_ci` plus `skip_ci_<channel>` from the root pubspec.
  Future<Set<String>> _getSkips(String channel) async {
    try {
      final yaml =
          loadYaml(await File('pubspec.yaml').readAsString()) as YamlMap;
      return {
        for (final key in ['skip_ci', 'skip_ci_$channel'])
          if (yaml[key] case final YamlList list)
            ...list.map((e) => e.toString()),
      };
    } catch (e) {
      log(yellow.wrap('Could not read skip lists: $e'), stderr);
      return const {};
    }
  }

  Future<ProjectResult> _processProject(String projectPath) async {
    final projectName = p.basename(projectPath);
    final issues = <String>[];

    if (!Directory(projectPath).existsSync()) {
      log(red.wrap('Project directory not found: $projectPath'), stderr);
      return ProjectResult(projectPath, ['directory not found']);
    }

    log(styleBold.wrap('\n========================================='), stdout);
    log(styleBold.wrap('Processing project: $projectName'), stdout);
    log(styleBold.wrap('=========================================')!, stdout);

    final commands = [
      Command('dart analyze', 'Running dart analyze...', 'dart', [
        'analyze',
        '--fatal-infos',
        '--fatal-warnings',
      ]),
      // Rewrites files on purpose. This script produces a diff to review.
      Command('dart format', 'Running dart format...', 'dart', [
        'format',
        '.',
      ]),
    ];

    if (!_skipTests && Directory(p.join(projectPath, 'test')).existsSync()) {
      final pubspec = File(
        p.join(projectPath, 'pubspec.yaml'),
      ).readAsStringSync();
      commands.add(
        pubspec.contains('sdk: flutter')
            ? Command('flutter test', 'Running tests...', 'flutter', [
                'test',
                '--no-pub',
              ])
            : Command('dart test', 'Running tests...', 'dart', ['test']),
      );
    }

    for (final command in commands) {
      log(blue.wrap(command.description), stdout);

      final (didPass, output) = await _runCommand(
        command.executable,
        command.arguments,
        workingDirectory: projectPath,
      );

      if (!didPass) {
        log(
          red.wrap('${command.displayName} failed for $projectName'),
          stderr,
        );
        issues.add('${command.displayName} failed');
        logToFile('- ${command.displayName} failed in $projectName');
        if (!_isOnlyWhitespace(output)) logToFile('-- $output');
      }
    }

    if (issues.isEmpty) {
      log(green.wrap('Successfully processed $projectName'), stdout);
    } else {
      log(
        red.wrap('$projectName finished with ${issues.length} issue(s)'),
        stderr,
      );
    }
    return ProjectResult(projectPath, issues);
  }

  Future<bool> _updateSdkConstraints(
    String projectDir,
    String versionString,
  ) async {
    final pubspecFile = File(p.join(projectDir, 'pubspec.yaml'));
    if (!pubspecFile.existsSync()) {
      log(red.wrap('pubspec.yaml not found in $projectDir'), stderr);
      return false;
    }

    final newConstraint = '^$versionString-0';
    if (_isDryRun) {
      log(
        yellow.wrap(
          '  [DRY RUN] Would set environment.sdk to `$newConstraint` in '
          '`$projectDir/pubspec.yaml`',
        ),
        stdout,
      );
      return true;
    }

    try {
      final editor = YamlEditor(await pubspecFile.readAsString());
      final current = editor.parseAt([
        'environment',
        'sdk',
      ], orElse: () => wrapAsYamlNode(null)).value;
      if (current == newConstraint) {
        log(blue.wrap('  $projectDir already at $newConstraint'), stdout);
        return true;
      }
      editor.update(['environment', 'sdk'], newConstraint);
      await pubspecFile.writeAsString(editor.toString());
      log(
        blue.wrap('  $projectDir: $current -> $newConstraint'),
        stdout,
      );
      return true;
    } catch (e) {
      log(
        red.wrap('Failed to update SDK constraint in $projectDir: $e'),
        stderr,
      );
      return false;
    }
  }

  Future<(bool, String)> _runCommand(
    String executable,
    List<String> arguments, {
    String? workingDirectory,
  }) async {
    final commandString = '$executable ${arguments.join(' ')}';
    if (_isDryRun) {
      log(
        yellow.wrap(
          '  [DRY RUN] Would execute: `$commandString` in `${workingDirectory ?? '.'}`',
        ),
        stdout,
      );
      return (true, '');
    }

    final process = await Process.start(
      executable,
      arguments,
      workingDirectory: workingDirectory,
      runInShell: true,
    );

    final output = StringBuffer();

    final stdoutFuture = process.stdout
        .transform(SystemEncoding().decoder)
        .forEach((line) {
          log(line, stdout);
          if (!_isOnlyWhitespace(line)) {
            output.writeln(line.trim());
          }
        });

    final stderrFuture = process.stderr
        .transform(SystemEncoding().decoder)
        .forEach((line) {
          log(red.wrap(line), stderr);
          if (!_isOnlyWhitespace(line)) {
            output.writeln(line.trim());
          }
        });

    await Future.wait([stdoutFuture, stderrFuture]);

    return (await process.exitCode == 0, output.toString());
  }

  void _printSummary(List<ProjectResult> results, List<String> skipped) {
    final failed = results.where((r) => !r.passed).toList();

    log(
      styleBold.wrap('\n=========================================')!,
      stdout,
    );
    log(styleBold.wrap('Update Summary')!, stdout);
    log(styleBold.wrap('=========================================')!, stdout);
    log(blue.wrap('Total projects processed: ${results.length}'), stdout);
    log(green.wrap('Successful: ${results.length - failed.length}'), stdout);
    if (skipped.isNotEmpty) {
      log(yellow.wrap('Skipped: ${skipped.length}'), stdout);
    }

    if (failed.isEmpty) return;

    log(red.wrap('Failed: ${failed.length}'), stderr);
    for (final result in failed) {
      log(red.wrap('  - ${result.path}: ${result.issues.join(', ')}'), stderr);
    }
    log(blue.wrap('\nDetails in ${_logFile.path}'), stdout);
  }

  String _stripAnsiCodes(String text) {
    final ansiRegex = RegExp(r'\x1B\[[0-?]*[ -/]*[@-~]');
    return text.replaceAll(ansiRegex, '');
  }

  bool _isOnlyWhitespace(String text) {
    return text.trim().isEmpty;
  }
}

class Command {
  final String displayName;
  final String description;
  final String executable;
  final List<String> arguments;

  Command(this.displayName, this.description, this.executable, this.arguments);
}
