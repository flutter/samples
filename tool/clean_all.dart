import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';

/// Runs `flutter clean` in every package listed in the root pubspec.yaml
/// workspace. Useful for clearing stale build artifacts after switching Flutter
/// channels.
Future<void> main() async {
  final rootDir = Directory.current;
  final pubspecFile = File(path.join(rootDir.path, 'pubspec.yaml'));
  final pubspecContent = await pubspecFile.readAsString();
  final pubspecYaml = loadYaml(pubspecContent);

  final workspace = pubspecYaml['workspace'] as YamlList?;
  if (workspace == null) {
    print('No workspace found in pubspec.yaml');
    exit(1);
  }

  final flutterBin = _resolveFlutterBin();
  print('Using flutter: $flutterBin');

  var cleaned = 0;
  var skipped = 0;

  for (final entry in workspace) {
    final package = entry.toString();
    final packagePath = path.join(rootDir.path, package);

    // Only clean packages that have a pubspec.yaml (i.e. are Flutter/Dart pkgs)
    final pubspec = File(path.join(packagePath, 'pubspec.yaml'));
    if (!await pubspec.exists()) {
      print('-- Skipping \'$package\' (no pubspec.yaml found)');
      skipped++;
      continue;
    }

    print('== Cleaning \'$package\' ==');
    final process = await Process.start(
      flutterBin,
      ['clean'],
      workingDirectory: packagePath,
      runInShell: true,
      mode: ProcessStartMode.inheritStdio,
    );
    final exitCode = await process.exitCode;
    if (exitCode != 0) {
      print(
        'Warning: flutter clean failed with exit code $exitCode in $packagePath',
      );
    } else {
      cleaned++;
    }
  }

  print('');
  print('Done. Cleaned $cleaned package(s), skipped $skipped.');
}

/// Resolves the path to the `flutter` binary by finding it relative to the
/// running Dart SDK. Falls back to 'flutter' (uses PATH) if not found.
String _resolveFlutterBin() {
  // Platform.resolvedExecutable points to the dart binary, e.g.:
  //   /path/to/flutter/bin/cache/dart-sdk/bin/dart
  // Flutter binary is at /path/to/flutter/bin/flutter
  final dartBin = File(Platform.resolvedExecutable);
  final flutterBin = path.join(
    dartBin.parent.parent.parent.parent.path,
    'bin',
    'flutter',
  );
  if (File(flutterBin).existsSync()) {
    return flutterBin;
  }
  return 'flutter'; // fallback to PATH
}
