// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:args/args.dart';
import 'package:path/path.dart' as path;

import 'package:codeviewer_cli/segment_generator.dart';

main(List<String> arguments) {
  final parentDirPath = Directory.current.parent.path;
  final parser = ArgParser()
    ..addOption(
      'target',
      help: 'The file path for the output target file.',
      defaultsTo: path.join(
          parentDirPath, 'gallery', 'lib', 'codeviewer', 'code_segments.dart'),
    );
  final argResults = parser.parse(arguments);

  writeSegments(
    sourceDirectoryPath: path.join(parentDirPath, 'gallery', 'lib', 'demos'),
    targetFilePath: argResults['target'],
  );
}
