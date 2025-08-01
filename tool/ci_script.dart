import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';

Future<void> main() async {
  final rootDir = Directory.current;
  final pubspecFile = File(path.join(rootDir.path, 'pubspec.yaml'));
  final pubspecContent = await pubspecFile.readAsString();
  final pubspecYaml = loadYaml(pubspecContent);

  // pub workspace, only run 'get' once
  final workspace = pubspecYaml['workspace'] as YamlList?;
  await _runCommand('flutter', ['pub', 'get']);
  if (workspace == null) {
    print('No workspace found in pubspec.yaml');
    exit(1);
  }

  final packages = workspace.map((e) => e.toString()).toList();

  for (final package in packages) {
    final packagePath = path.join(rootDir.path, package);
    print('== Testing \'$package\' ==');
    await _runCommand('dart', [
      'analyze',
      '--fatal-infos',
      '--fatal-warnings',
    ], workingDirectory: packagePath);
    await _runCommand('dart', [
      'format',
      '--output',
      'none',
      '.',
    ], workingDirectory: packagePath);

    if (await Directory(path.join(packagePath, 'test')).exists()) {
      final packagePubspecFile = File(path.join(packagePath, 'pubspec.yaml'));
      final packagePubspecContent = await packagePubspecFile.readAsString();
      if (packagePubspecContent.contains('flutter:')) {
        await _runCommand('flutter', ['test'], workingDirectory: packagePath);
      } else {
        await _runCommand('dart', ['test'], workingDirectory: packagePath);
      }
    }
  }
}

Future<void> _runCommand(
  String executable,
  List<String> arguments, {
  String? workingDirectory,
}) async {
  final process = await Process.start(
    executable,
    arguments,
    workingDirectory: workingDirectory,
    mode: ProcessStartMode.inheritStdio,
  );
  final exitCode = await process.exitCode;
  if (exitCode != 0) {
    print(
      'Command "$executable ${arguments.join(' ')}" failed with exit code $exitCode in $workingDirectory',
    );
    exit(exitCode);
  }
}
