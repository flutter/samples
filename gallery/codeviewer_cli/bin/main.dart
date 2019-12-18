// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:codeviewer_cli/segment_generator.dart';
import 'package:args/args.dart' as args;

main(List<String> arguments) {
  final parser = args.ArgParser();
  parser.addOption(
    'source-directory',
    help: 'The source directory to collect and generate code segments from.',
  );
  parser.addOption(
    'target-file',
    help: 'The filename for the generated highlighted code segments.',
  );
  final results = parser.parse(arguments);
  writeSegments(
    sourceDirectoryPath: results['source-directory'],
    targetFilePath: results['target-file'],
  );
}
