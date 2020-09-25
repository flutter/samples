// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file

// Called by https://pub.dartlang.org/packages/peanut to generate example pages
// for hosting.
//
// Requires at least v3.2.0 of `package:peanut`

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import 'common.dart';

main(List<String> args) async {
  final buildDir = args[0];
  final fileMap =
      (jsonDecode(args[1]) as Map<String, dynamic>).cast<String, String>();

  if (fileMap.length < 2) {
    throw StateError('We are assuming there is more than one sample!');
  }

  // This is USUALLY the case – where we have more than one demo
  for (var exampleDir in fileMap.values) {
    for (var htmlFile in Directory(p.join(buildDir, exampleDir))
        .listSync()
        .whereType<File>()
        .where((f) => p.extension(f.path) == '.html')) {
      _updateHtml(htmlFile, buildDir, exampleDir);
    }
  }

  // Move each sample into a subdirectory, 'web'
  for (var exampleDir in fileMap.values) {
    var oldDirectory = Directory(p.join(buildDir, exampleDir));
    Directory(p.join(buildDir, 'web')).createSync();
    oldDirectory.renameSync(p.join(buildDir, 'web', exampleDir));
  }

  // Build the sample index and copy the files into this directory
  print('building the sample index...');
  await run('samples_index', 'pub', ['get']);
  await run('samples_index', 'pub', ['run', 'grinder', 'deploy']);

  // Copy the contents of the samples_index/public directory to the build
  // directory
  logWrapped(ansiMagenta, '  Copying samples_index/public to build directory');
  var contents = Directory(p.join('samples_index', 'public')).listSync();
  for (var entity in contents) {
    var newPath = p.join(buildDir, p.basename(entity.path));
    entity.renameSync(newPath);
  }
}

void _updateHtml(File htmlFile, String buildDir, String exampleDir) {
  final content = htmlFile.readAsStringSync();

  final filePath = p.relative(htmlFile.path, from: buildDir);

  if (!content.contains(_standardMeta)) {
    print('!!! missing standard meta! - $filePath');
  }

  final newContent = content
      .replaceFirst('<head>', '<head>\n$_analytics')
      .replaceFirst(_emptyTitle,
          '<title>${_prettyName(exampleDir)} - Flutter web sample</title>');

  if (newContent == content) {
    print('!!! Did not replace contents in $filePath');
  } else {
    print('Replaced contents in $filePath');
    htmlFile.writeAsStringSync(newContent, flush: true);
  }
}

final _underscoreOrSlash = RegExp('_|/');

String _prettyName(String input) =>
    input.split(_underscoreOrSlash).where((e) => e.isNotEmpty).map((e) {
      return e.substring(0, 1).toUpperCase() + e.substring(1);
    }).join(' ');

// flutter.github.io
const _analyticsId = 'UA-67589403-8';

const _analytics = '''
<script async src="https://www.googletagmanager.com/gtag/js?id=$_analyticsId"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', '$_analyticsId');
</script>''';

const _emptyTitle = '<title></title>';

const _standardMeta = '''
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  $_emptyTitle''';
