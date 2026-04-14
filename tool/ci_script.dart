import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';

Future<void> main() async {
  final rootDir = Directory.current;
  final pubspecFile = File(path.join(rootDir.path, 'pubspec.yaml'));
  final pubspecContent = await pubspecFile.readAsString();
  final pubspecYaml = loadYaml(pubspecContent);

  // contains full list of samples
  final workspace = pubspecYaml['workspace'] as YamlList?;

  if (workspace == null) {
    print('No workspace found in pubspec.yaml');
    exit(1);
  }

  // CI always skips the samples on this list
  final skipCiList = pubspecYaml['skip_ci'] as YamlList?;

  // CI will also skip for samples on specific branches
  // This is useful when API changes in the beta branch are causing CI to fail
  // and there isn't a solution that works in both beta and main
  final channel = await _getFlutterChannel();
  print('Current Flutter channel: $channel');

  final channelSkipKey = 'skip_ci_$channel';
  final channelSkipList = pubspecYaml[channelSkipKey] as YamlList?;
  if (channelSkipList != null) {
    print('Applying skips for channel "$channel": $channelSkipList');
  }

  // pub workspace, only run 'get' once
  await _runCommand('flutter', ['pub', 'get'], workingDirectory: rootDir.path);

  final packages = workspace
      .where((e) {
        if (skipCiList != null && skipCiList.contains(e)) return false;
        if (channelSkipList != null && channelSkipList.contains(e))
          return false;
        return true;
      })
      .map((e) => e.toString())
      .toList();

  for (final package in packages) {
    final packagePath = path.join(rootDir.path, package);
    print('== Testing \'$package\' ==');
    await _runCommand('dart', [
      'analyze',
      '--fatal-infos',
      '--fatal-warnings',
    ], workingDirectory: packagePath);

    await _runCommand('dart', ['format', '.'], workingDirectory: packagePath);

    if (await Directory(path.join(packagePath, 'test')).exists()) {
      final packagePubspecFile = File(path.join(packagePath, 'pubspec.yaml'));
      final packagePubspecContent = await packagePubspecFile.readAsString();
      if (packagePubspecContent.contains('flutter:')) {
        await _runCommand('flutter', [
          'test',
          '--no-pub',
        ], workingDirectory: packagePath);
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
    runInShell: true,
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

Future<String> _getFlutterChannel() async {
  try {
    final result = await Process.run('flutter', [
      '--version',
      '--machine',
    ], runInShell: true);
    if (result.exitCode != 0) {
      print('Flutter version command failed with exit code ${result.exitCode}');
      print('Stdout: ${result.stdout}');
      print('Stderr: ${result.stderr}');
      return 'unknown';
    }
    final machineInfo = jsonDecode(result.stdout as String);
    return machineInfo['channel'] as String? ?? 'unknown';
  } catch (e) {
    print('Error detecting Flutter channel: $e');
    return 'unknown';
  }
}
