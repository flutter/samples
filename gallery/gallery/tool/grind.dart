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
  final targetFilePath = path.join('lib', 'codeviewer', 'code_segments.dart');
  await format(path: targetFilePath);
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
