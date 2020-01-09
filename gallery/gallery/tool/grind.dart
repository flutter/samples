// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:grinder/grinder.dart';
import 'package:path/path.dart' as path;

void main(List<String> args) => grind(args);

@Task('Get packages')
Future<void> pubGet({String directory}) async {
  await _runProcess(
    'flutter',
    ['pub', 'get', if (directory != null) directory],
  );
}

@Task('Format dart files')
Future<void> format({String path = '.'}) async {
  await _runProcess('flutter', ['format', path]);
}

@Task('Generate localizations files')
Future<void> generateLocalizations() async {
  final l10nScriptFile = path.join(
    _flutterRootPath(),
    'dev',
    'tools',
    'localization',
    'bin',
    'gen_l10n.dart',
  );

  Dart.run(l10nScriptFile, arguments: [
    '--template-arb-file=intl_en_US.arb',
    '--output-localization-file=gallery_localizations.dart',
    '--output-class=GalleryLocalizations',
    '--preferred-supported-locales=["en_US"]'
  ]);
  await format(path: path.join('lib', 'l10n'));
}

@Task('Transform arb to xml for English')
@Depends(generateLocalizations)
Future<void> l10n() async {
  final l10nPath = path.join(Directory.current.parent.path, 'l10n_cli');
  await pubGet(directory: l10nPath);

  Dart.run(path.join(l10nPath, 'bin', 'main.dart'));
}

@Task('Update code segments')
Future<void> updateCodeSegments() async {
  final codeviewerPath =
      path.join(Directory.current.parent.path, 'codeviewer_cli');
  await pubGet(directory: codeviewerPath);

  Dart.run(path.join(codeviewerPath, 'bin', 'main.dart'));
  final codeSegmentsPath = path.join('lib', 'codeviewer', 'code_segments.dart');
  await format(path: codeSegmentsPath);
}

@Task('Verify and analyze dart files')
Future<void> analyze() async {
  final codeviewerPath =
      path.join(Directory.current.parent.path, 'codeviewer_cli');
  final tmpCodeSegmentsPath =
      path.join('lib', 'codeviewer', 'tmp_code_segments.dart');
  final codeSegmentsPath = path.join('lib', 'codeviewer', 'code_segments.dart');

  Dart.run(path.join(codeviewerPath, 'bin', 'main.dart'),
      arguments: ['--target=$tmpCodeSegmentsPath']);
  await format(path: tmpCodeSegmentsPath);

  String codeSegmentsOutput = await File(tmpCodeSegmentsPath).readAsString();
  String expectedCodeSegmentsOutput =
      await File(codeSegmentsPath).readAsString();

  if (codeSegmentsOutput.trim() != expectedCodeSegmentsOutput.trim()) {
    stderr.writeln(
      'The contents of $codeSegmentsPath are different from that produced by '
      'codeviewer_cli. Did you forget to run update-code-segments after '
      'updating a demo?',
    );
    exit(1);
  }
}

Future<void> _runProcess(String executable, List<String> arguments) async {
  final result = await Process.run(executable, arguments);
  stdout.write(result.stdout);
  stderr.write(result.stderr);
}

/// Return the flutter root path from the environment variables.
String _flutterRootPath() {
  final flutterBinPath =
      Platform.environment['PATH'].split(':').lastWhere((setting) {
    return path.canonicalize(setting).endsWith(path.join('flutter', 'bin'));
  });
  return Directory(flutterBinPath).parent.path;
}
