// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file

import 'dart:io';
import 'package:path/path.dart' as p;
import 'common.dart';
import 'fix_base_tags.dart';

final ignoredDirectories = ['_tool', 'samples_index'];

main() async {
  final packageDirs = [
    ...listPackageDirs(Directory.current)
        .map((path) => p.relative(path, from: Directory.current.path))
        .where((path) => !ignoredDirectories.contains(path))
  ];

  print('Building the sample index...');
  await _run('samples_index', 'pub', ['get']);
  await _run('samples_index', 'pub', ['run', 'grinder', 'deploy']);

  // Create the directory each Flutter Web sample lives in
  Directory(p.join(Directory.current.path, 'samples_index', 'public', 'web'))
      .createSync(recursive: true);

  for (var i = 0; i < packageDirs.length; i++) {
    var directory = packageDirs[i];

    logWrapped(ansiMagenta, '\n$directory (${i + 1} of ${packageDirs.length})');

    // Create the target directory
    var directoryName = p.basename(directory);
    var sourceBuildDir =
        p.join(Directory.current.path, directory, 'build', 'web');
    var targetDirectory = p.join(Directory.current.path, 'samples_index',
        'public', 'web', directoryName);

    // Build the sample and copy the files
    await _run(directory, 'flutter', ['pub', 'get']);
    await _run(directory, 'flutter', ['build', 'web']);
    await _run(directory, 'mv', [sourceBuildDir, targetDirectory]);
  }

  // Update the <base href> tags in each index.html file
  await fixBaseTags();
}

// Invokes run() and exits if the sub-process failed.
Future<void> _run(
    String workingDir, String commandName, List<String> args) async {
  var success = await run(workingDir, commandName, args);
  if (!success) {
    exit(1);
  }
}
