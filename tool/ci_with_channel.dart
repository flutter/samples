import 'dart:io';
import 'package:args/args.dart';
import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';

/// Do not use this with GitHub Actions. It is a convenience script for running
/// CI locally.
///
/// Usage: dart tool/ci_with_channel.dart -c stable,beta

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
          'Comma-separated list of channels to run on (e.g., stable,beta,main)',
    );

  final results = parser.parse(args);

  if (results['help'] as bool) {
    print(parser.usage);
    return;
  }

  final channelsArg = results['channels'] as String?;

  List<String> channels;
  if (channelsArg != null) {
    channels = channelsArg.split(',').map((c) => c.trim()).toList();
  } else {
    // Default to current channel if none specified
    channels = [];
  }

  final rootDir = Directory.current;
  final originalChannel = await _getCurrentChannel();

  try {
    if (channels.isEmpty) {
      print('Running on current channel: $originalChannel');
      await _runCI(rootDir);
    } else {
      for (final channel in channels) {
        print('\n=== Switching to channel: $channel ===');
        await _runCommand('flutter', ['channel', channel]);
        await _runCommand('flutter', ['doctor']);
        await _runCI(rootDir);
      }
    }
  } finally {
    if (channels.isNotEmpty && originalChannel != null) {
      print('\n=== Switching back to original channel: $originalChannel ===');
      await _runCommand('flutter', ['channel', originalChannel]);
    }
  }
}

Future<String?> _getCurrentChannel() async {
  final result = await Process.run('flutter', ['channel']);
  if (result.exitCode != 0) {
    return null;
  }
  final output = result.stdout as String;
  final match = RegExp(r'\* (\w+)').firstMatch(output);
  return match?.group(1);
}

Future<void> _runCI(Directory rootDir) async {
  final pubspecFile = File(path.join(rootDir.path, 'pubspec.yaml'));
  final pubspecContent = await pubspecFile.readAsString();
  final pubspecYaml = loadYaml(pubspecContent);

  final workspace = pubspecYaml['workspace'] as YamlList?;
  if (workspace == null) {
    print('No workspace found in pubspec.yaml');
    exit(1);
  }

  // pub workspace, only run 'get' once
  await _runCommand('flutter', ['pub', 'get'], workingDirectory: rootDir.path);

  final packages = workspace.map((e) => e.toString()).toList();

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
