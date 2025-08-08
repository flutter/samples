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

class ReleaseScriptRunner {
  late final File _logFile;
  bool _isDryRun = false;

  Future<void> run(List<String> arguments) async {
    final parser = ArgParser()
      ..addFlag(
        'dry-run',
        negatable: false,
        help:
            'Prints the commands that would be executed, but does not run them.',
      );
    final argResults = parser.parse(arguments);
    _isDryRun = argResults['dry-run'] as bool;

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
    log(blue.wrap('Using Dart SDK version: $dartVersion'), stdout);

    final packages = await _getWorkspacePackages();
    if (packages.isEmpty) {
      log(
        yellow.wrap('No packages found in the root pubspec.yaml workspace.'),
        stdout,
      );
      exit(0);
    }

    log(
      blue.wrap(
        'Found ${packages.length} Flutter project(s): ${packages.join(', ')}',
      ),
      stdout,
    );

    final failedProjects = <String>[];
    for (final packagePath in packages) {
      final success = await _processProject(packagePath, dartVersion);
      if (!success) {
        failedProjects.add(packagePath);
      }
    }

    _printSummary(packages.length, failedProjects);

    log(
      styleBold.wrap(
        '\nFlutter Monorepo Update Script Completed: ${DateTime.now()}',
      ),
      stdout,
    );

    if (failedProjects.isNotEmpty) {
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

  Future<String?> _getDartVersion() async {
    try {
      final result = await Process.run('flutter', ['--version', '--machine']);
      if (result.exitCode == 0) {
        final json = loadYaml(result.stdout as String) as YamlMap;
        final fullDartVersion = json['dartSdkVersion'] as String?;
        if (fullDartVersion != null) {
          return fullDartVersion.split(' ').first;
        }
        return null;
      }
    } catch (e) {
      log(red.wrap('Error getting Dart SDK version: $e'), stderr);
    }
    return null;
  }

  Future<List<String>> _getWorkspacePackages() async {
    final rootPubspec = File('pubspec.yaml');
    if (!rootPubspec.existsSync()) {
      log(red.wrap('Root pubspec.yaml not found!'), stderr);
      return [];
    }

    try {
      final content = await rootPubspec.readAsString();
      final yaml = loadYaml(content) as YamlMap;
      final workspace = yaml['workspace'] as YamlList?;
      if (workspace != null) {
        return workspace.nodes.map((node) => node.value as String).toList();
      }
    } catch (e) {
      log(red.wrap('Error reading workspace packages: $e'), stderr);
    }
    return [];
  }

  Future<bool> _processProject(String projectPath, String dartVersion) async {
    final projectName = p.basename(projectPath);
    final projectDir = Directory(projectPath);
    final issues = [];

    if (!projectDir.existsSync()) {
      log(red.wrap('Project directory not found: $projectPath'), stderr);
      return false;
    }

    log(styleBold.wrap('\n========================================='), stdout);
    log(styleBold.wrap('Processing project: $projectName'), stdout);
    log(styleBold.wrap('=========================================')!, stdout);

    log(blue.wrap('Updating SDK constraints to use Dart $dartVersion'), stdout);
    if (!_isDryRun) {
      if (!await _updateSdkConstraints(projectPath, dartVersion)) {
        log(
          red.wrap('Failed to update SDK constraints for $projectName'),
          stderr,
        );
        return false;
      }
    }

    final commands = [
      Command('dart analyze', 'Running dart analyze...', 'dart', [
        'analyze',
        '--fatal-infos',
        '--fatal-warnings',
      ]),
      Command('dart format', 'Running dart format...', 'dart', ['format', '.']),
    ];

    final testDir = Directory(p.join(projectPath, 'test'));
    if (projectName != 'material_3_demo' && testDir.existsSync()) {
      commands.add(
        Command('flutter test', 'Running tests...', 'flutter', ['test']),
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
        log(red.wrap('${command.displayName} failed for $projectName'), stderr);

        if (command.displayName == 'pub upgrade' ||
            command.displayName == 'pub get' &&
                output.contains('Failed to update packages.')) {
          issues.add(output);
        }

        if (command.displayName == 'dart analyze' &&
                output.contains('issue found.') ||
            output.contains('issues found.')) {
          issues.add(output);
        }

        if (command.displayName == 'flutter test' &&
            !output.contains('All tests passed!')) {
          issues.add(output);
        }
      }
    }

    if (issues.isNotEmpty) {
      logToFile('- Issues found in $projectName');
      for (final issue in issues) {
        if (_isOnlyWhitespace(issue)) continue;
        logToFile('-- $issue');
      }
    }

    log(green.wrap('Successfully processed $projectName'), stdout);
    return true;
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

    try {
      final newConstraint = '^${versionString}-0';

      final content = await pubspecFile.readAsString();
      final editor = YamlEditor(content);
      editor.update(['environment', 'sdk'], newConstraint);

      await pubspecFile.writeAsString(editor.toString());
      log(
        blue.wrap(
          'Updated Dart SDK constraint in $projectDir to: $newConstraint',
        ),
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

    StringBuffer output = StringBuffer('');

    final stdoutFuture = process.stdout
        .transform(SystemEncoding().decoder)
        .forEach((line) {
          log(line, stdout);
          if (!_isOnlyWhitespace(line))
            output.writeln('${line.trim().padLeft(2)}');
        });

    final stderrFuture = process.stderr
        .transform(SystemEncoding().decoder)
        .forEach((line) {
          log(red.wrap(line), stderr);
          if (!_isOnlyWhitespace(line))
            output.writeln('${line.trim().padLeft(2)}');
        });

    await Future.wait([stdoutFuture, stderrFuture]);

    return (await process.exitCode == 0, output.toString());
  }

  void _printSummary(int total, List<String> failed) {
    log(styleBold.wrap('\n=========================================')!, stdout);
    log(styleBold.wrap('Update Summary')!, stdout);
    log(styleBold.wrap('=========================================')!, stdout);
    log(blue.wrap('Total projects processed: $total'), stdout);
    log(green.wrap('Successful: ${total - failed.length}'), stdout);

    if (failed.isNotEmpty) {
      log(red.wrap('Failed: ${failed.length}'), stderr);
      log(red.wrap('Failed projects: ${failed.join(', ')}'), stderr);
    }
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
