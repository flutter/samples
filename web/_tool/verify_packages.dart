// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file

import 'dart:io';

import 'package:path/path.dart' as p;
import 'common.dart';

const _ansiGreen = 32;
const _ansiRed = 31;
const _ansiMagenta = 35;

void main() async {
  final packageDirs = _listPackageDirs(Directory.current)
      .map((path) => p.relative(path, from: Directory.current.path))
      .toList();

  print('Package dirs:\n${packageDirs.map((path) => '  $path').join('\n')}');

  final results = <bool>[];
  for (var i = 0; i < packageDirs.length; i++) {
    final dir = packageDirs[i];
    logWrapped(_ansiMagenta, '\n$dir (${i + 1} of ${packageDirs.length})');
    results.add(await run(dir, 'flutter', [
      'pub',
      'pub',
      'upgrade',
      '--no-precompile',
    ]));
    results.add(await run(
      dir,
      'dartanalyzer',
      ['--fatal-infos', '--fatal-warnings', '.'],
    ));
    _printStatus(results);
  }

  if (results.any((v) => !v)) {
    exitCode = 1;
  }
}

void _printStatus(List<bool> results) {
  var successCount = results.where((t) => t).length;
  var success = (successCount == results.length);
  var pct = 100 * successCount / results.length;

  logWrapped(success ? _ansiGreen : _ansiRed,
      '$successCount of ${results.length} (${pct.toStringAsFixed(2)}%)');
}

Iterable<String> _listPackageDirs(Directory dir) sync* {
  if (File('${dir.path}/pubspec.yaml').existsSync()) {
    yield dir.path;
  } else {
    for (var subDir in dir
        .listSync(followLinks: true)
        .whereType<Directory>()
        .where((d) => !Uri.file(d.path).pathSegments.last.startsWith('.'))) {
      yield* _listPackageDirs(subDir);
    }
  }
}
