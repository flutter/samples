// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
import 'dart:convert';
import 'dart:io';

import 'package:grinder/grinder.dart';
import 'package:path/path.dart' as path;

void main(List<String> args) => grind(args);

@Task()
void runSkia() {
  run('flutter',
      arguments:
          'run -d web --web-port=5000 --release --dart-define=FLUTTER_WEB_USE_SKIA=true lib/main.dart '
              .split(' '));
}

@Task()
void runWeb() {
  run('flutter',
      arguments: 'run -d web --web-port=5000 lib/main.dart '.split(' '));
}

@Task()
void runFirebase() {
  run('flutter',
      arguments:
          'run -d web --web-port=5000 lib/main_firebase.dart '.split(' '));
}

@Task()
void runFirebaseSkia() {
  run('flutter',
      arguments:
          'run -d web --web-port=5000 --release --dart-define=FLUTTER_WEB_USE_SKIA=true lib/main_firebase.dart'
              .split(' '));
}

@Task()
void test() {
  TestRunner().testAsync();
}

@DefaultTask()
@Depends(test, copyright)
void build() {
  Pub.build();
}

@Task()
void clean() => defaultClean();

@Task()
void generate() {
  Pub.run('build_runner', arguments: ['build']);
}

const _copyright =
    '''// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.''';

@Task()
Future copyright() async {
  var files = <File>[];
  await for (var file in _filesWithoutCopyright()) {
    files.add(file);
  }

  if (files.isNotEmpty) {
    log('Found Dart files without a copyright header:');
    for (var file in files) {
      log(file.toString());
    }
    fail('run "grind fix-copyright" to add copyright headers');
  }
}

@Task()
Future fixCopyright() async {
  await for (var file in _filesWithoutCopyright()) {
    var contents = await file.readAsString();
    await file.writeAsString(_copyright + '\n\n' + contents);
  }
}

Stream<File> _filesWithoutCopyright() async* {
  var set = FileSet.fromDir(Directory('.'), recurse: true);
  var dartFiles =
      set.files.where((file) => path.extension(file.path) == '.dart');

  for (var file in dartFiles) {
    var firstThreeLines = await file
        .openRead()
        .transform(utf8.decoder)
        .transform(const LineSplitter())
        .take(3)
        .fold<String>('', (previous, element) {
      if (previous == '') return element;
      return previous + '\n' + element;
    });

    if (firstThreeLines != _copyright) {
      yield file;
    }
  }
}
