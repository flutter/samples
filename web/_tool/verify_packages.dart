// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file

import 'dart:io';

import 'package:path/path.dart' as p;

import 'common.dart';

void main() async {
  final packageDirs = listPackageDirs(Directory.current)
      .map((path) => p.relative(path, from: Directory.current.path))
      .toList();

  print('Package dirs:\n${packageDirs.map((path) => '  $path').join('\n')}');

  final results = <bool>[];
  for (var i = 0; i < packageDirs.length; i++) {
    final dir = packageDirs[i];
    logWrapped(ansiMagenta, '\n$dir (${i + 1} of ${packageDirs.length})');
    results.add(await run(dir, 'flutter', [
      'pub',
      'pub',
      'upgrade',
      '--no-precompile',
    ]));
    results.add(await run(
      dir,
      'flutter',
      ['analyze', '--fatal-infos', '--fatal-warnings', '.'],
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

  logWrapped(success ? ansiGreen : ansiRed,
      '$successCount of ${results.length} (${pct.toStringAsFixed(2)}%)');
}
