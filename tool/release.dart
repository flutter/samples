import 'dart:io';

import 'package:args/args.dart';
import 'package:io/ansi.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:yaml/yaml.dart';
import 'package:yaml_edit/yaml_edit.dart';

const String logDir = 'logs';

late File _logFile;

void main(List<String> arguments) async {
  final parser = ArgParser()
    ..addFlag('dry-run',
        negatable: false,
        help:
            'Prints the commands that would be executed, but does not run them.');
  final argResults = parser.parse(arguments);
  final isDryRun = argResults['dry-run'] as bool;

  setupLogging();

  log(
      styleBold
          .wrap('Flutter Monorepo Update Script Started: ${DateTime.now()}')!,
      stdout);
  log(blue.wrap('Log file: ${_logFile.path}')!, stdout);

  if (isDryRun) {
    log(yellow.wrap('--- DRY RUN MODE ---')!, stdout);
  }

  if (!await isFlutterInstalled()) {
    log(red.wrap('Flutter is not installed or not in PATH')!, stderr);
    exit(1);
  }

  log(styleBold.wrap('\n=========================================')!, stdout);
  log(styleBold.wrap('Upgrading Flutter SDK')!, stdout);
  log(styleBold.wrap('=========================================')!, stdout);

  if (!await runCommand('flutter', ['upgrade'], isDryRun: isDryRun)) {
    log(red.wrap('Failed to upgrade Flutter SDK')!, stderr);
    exit(1);
  }

  final dartVersion = await getDartVersion();
  if (dartVersion == null) {
    log(red.wrap('Failed to get Dart SDK version.'), stderr);
    exit(1);
  }
  log(blue.wrap('Using Dart SDK version: $dartVersion'), stdout);

  final packages = await getWorkspacePackages();
  if (packages.isEmpty) {
    log(yellow.wrap('No packages found in the root pubspec.yaml workspace.'),
        stdout);
    exit(0);
  }

  log(
      blue.wrap(
          'Found ${packages.length} Flutter project(s): ${packages.join(', ')}'),
      stdout);

  final failedProjects = <String>[];
  for (final packagePath in packages) {
    final success = await processProject(packagePath, dartVersion, isDryRun);
    if (!success) {
      failedProjects.add(packagePath);
    }
  }

  printSummary(packages.length, failedProjects);

  log(
      styleBold.wrap(
          '\nFlutter Monorepo Update Script Completed: ${DateTime.now()}'),
      stdout);

  if (failedProjects.isNotEmpty) {
    exit(1);
  }
}

void setupLogging() {
  final logsDir = Directory(logDir);
  if (!logsDir.existsSync()) {
    logsDir.createSync(recursive: true);
  }
  final timestamp = DateTime.now().toIso8601String().replaceAll(':', '-');
  _logFile = File(p.join(logDir, 'flutter_update_$timestamp.log'));
}

void log(String? message, IOSink sink) {
  if (message == null) return;
  sink.writeln(message);
  _logFile.writeAsStringSync(
    '${overrideAnsiOutput(false, () => message)}\n',
    mode: FileMode.append,
  );
}

Future<bool> isFlutterInstalled() async {
  try {
    final result = await Process.run('flutter', ['--version']);
    return result.exitCode == 0;
  } catch (e) {
    return false;
  }
}

Future<String?> getDartVersion() async {
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

Future<List<String>> getWorkspacePackages() async {
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

Future<bool> processProject(
    String projectPath, String dartVersion, bool isDryRun) async {
  final projectName = p.basename(projectPath);
  final projectDir = Directory(projectPath);

  if (!projectDir.existsSync()) {
    log(red.wrap('Project directory not found: $projectPath'), stderr);
    return false;
  }

  log(styleBold.wrap('\n========================================='), stdout);
  log(styleBold.wrap('Processing project: $projectName'), stdout);
  log(styleBold.wrap('=========================================')!, stdout);

  log(blue.wrap('Updating SDK constraints to use Dart $dartVersion'), stdout);
  if (!isDryRun) {
    if (!await updateSdkConstraints(projectPath, dartVersion)) {
      log(red.wrap('Failed to update SDK constraints for $projectName'),
          stderr);
      return false;
    }
  }

  final commands = [
    Command('Updating dependencies...', 'flutter', ['pub', 'upgrade']),
    Command('Running pub get...', 'flutter', ['pub', 'get']),
    Command('Running dart analyze...', 'dart', ['analyze']),
    Command('Running dart format...', 'dart', ['format', '.']),
    Command('Running tests...', 'flutter', ['test']),
  ];

  for (final command in commands) {
    log(blue.wrap(command.description), stdout);
    if (!await runCommand(command.executable, command.arguments,
        workingDirectory: projectPath, isDryRun: isDryRun)) {
      log(red.wrap('${command.description} failed for $projectName'), stderr);
      // For analyze, format, and test, we might not want to hard fail the whole script.
      // The original script continued on format errors but failed on test errors.
      if (command.executable == 'flutter' &&
          command.arguments.first == 'test') {
        return false;
      }
    }
  }

  log(green.wrap('Successfully processed $projectName'), stdout);
  return true;
}

Future<bool> updateSdkConstraints(
    String projectDir, String versionString) async {
  final pubspecFile = File(p.join(projectDir, 'pubspec.yaml'));
  if (!pubspecFile.existsSync()) {
    log(red.wrap('pubspec.yaml not found in $projectDir'), stderr);
    return false;
  }

  try {
    final version = Version.parse(versionString);
    final nextMajor = version.major + 1;
    final newConstraint = "'>=${version} <$nextMajor.0.0'";

    final content = await pubspecFile.readAsString();
    final editor = YamlEditor(content);
    editor.update(['environment', 'sdk'], newConstraint);

    await pubspecFile.writeAsString(editor.toString());
    log(
        blue.wrap(
            'Updated Dart SDK constraint in $projectDir to: $newConstraint'),
        stdout);
    return true;
  } catch (e) {
    log(red.wrap('Failed to update SDK constraint in $projectDir: $e'), stderr);
    return false;
  }
}

Future<bool> runCommand(String executable, List<String> arguments,
    {String? workingDirectory, bool isDryRun = false}) async {
  final commandString = '$executable ${arguments.join(' ')}';
  if (isDryRun) {
    log(
        yellow.wrap(
            '  [DRY RUN] Would execute: `$commandString` in `${workingDirectory ?? '.'}`'),
        stdout);
    return true;
  }

  final process = await Process.start(executable, arguments,
      workingDirectory: workingDirectory, runInShell: true);

  final stdoutFuture =
      process.stdout.transform(SystemEncoding().decoder).forEach((line) {
    log(line, stdout);
  });
  final stderrFuture =
      process.stderr.transform(SystemEncoding().decoder).forEach((line) {
    log(red.wrap(line), stderr);
  });

  await Future.wait([stdoutFuture, stderrFuture]);

  return await process.exitCode == 0;
}

void printSummary(int total, List<String> failed) {
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

class Command {
  final String description;
  final String executable;
  final List<String> arguments;

  Command(this.description, this.executable, this.arguments);
}
