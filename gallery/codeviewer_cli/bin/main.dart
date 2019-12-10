// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:codeviewer_cli/segment_generator.dart';

main(List<String> arguments) {
  writeSegments(
    sourceDirectoryPath: '../gallery/lib/demos',
    targetFilePath: '../gallery/lib/codeviewer/code_segments.dart',
  );
}
