// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file

import 'dart:io';

const ansiGreen = 32;
const ansiRed = 31;
const ansiMagenta = 35;

Future<bool> run(
    String workingDir, String commandName, List<String> args) async {
  var commandDescription = '`${([commandName, ...args]).join(' ')}`';

  logWrapped(ansiMagenta, '  Running $commandDescription');

  var proc = await Process.start(
    commandName,
    args,
    workingDirectory: Directory.current.path + '/' + workingDir,
    mode: ProcessStartMode.inheritStdio,
  );

  var exitCode = await proc.exitCode;

  if (exitCode != 0) {
    logWrapped(
        ansiRed, '  Failed! ($exitCode) – $workingDir – $commandDescription');
    return false;
  } else {
    logWrapped(ansiGreen, '  Success! – $workingDir – $commandDescription');
    return true;
  }
}

void logWrapped(int code, String message) {
  print('\x1B[${code}m$message\x1B[0m');
}

Iterable<String> listPackageDirs(Directory dir) sync* {
  if (File('${dir.path}/pubspec.yaml').existsSync()) {
    yield dir.path;
  } else {
    for (var subDir in dir
        .listSync(followLinks: true)
        .whereType<Directory>()
        .where((d) => !Uri.file(d.path).pathSegments.last.startsWith('.'))) {
      yield* listPackageDirs(subDir);
    }
  }
}
