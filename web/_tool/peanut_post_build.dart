// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Called by https://pub.dartlang.org/packages/peanut to generate example pages
// for hosting.
//
// Requires at least v3.2.0 of `package:peanut`

import 'dart:convert';
import 'dart:io';

import 'package:markdown/markdown.dart';
import 'package:path/path.dart' as p;

void main(List<String> args) {
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

  final tocFile = File(p.join(buildDir, 'index.html'));
  if (!tocFile.existsSync()) {
    throw StateError('$tocFile should exist!');
  }

  tocFile.writeAsStringSync(
      _tocTemplate(
        fileMap.entries.map(
          (entry) => _Demo(
            entry.key,
            entry.value,
          ),
        ),
      ),
      flush: true);
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

class _Demo {
  final String pkgDir, buildDir;

  _Demo(this.pkgDir, this.buildDir);

  String get content {
    final path = p.normalize(p.join(pkgDir, '..', 'README.md'));

    final readmeFile = File(path);

    if (!readmeFile.existsSync()) {
      print('  $path – No readme!');
      return '';
    }

    var readmeContent = readmeFile.readAsStringSync();

    final tripleLineIndex = readmeContent.indexOf('\n\n\n');
    var secondDoubleIndex = readmeContent.indexOf('\n\n');

    if (secondDoubleIndex >= 0) {
      secondDoubleIndex = readmeContent.indexOf('\n\n', secondDoubleIndex + 1);
    }

    final endIndices =
        ([tripleLineIndex, secondDoubleIndex].where((i) => i >= 0).toList()
          ..sort());

    final endIndex =
        endIndices.isEmpty ? readmeContent.length : endIndices.first;

    return markdownToHtml(readmeContent.substring(0, endIndex - 1));
  }

  String get name => _prettyName(buildDir);

  String get html => '''
<div>
  <a href='$buildDir'>
    <img src='${p.url.join(buildDir, 'preview.png')}' width="300" alt="$name">
  </a>
  <a class='demo-title' href='$buildDir'>$name</a>
  <div>
  ${_indent(content, 2)}
  </div>
</div>
''';
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

String _indent(String content, int spaces) =>
    LineSplitter.split(content).join('\n' + ' ' * spaces);

const _itemsReplace = r'<!-- ITEMS -->';

const _emptyTitle = '<title></title>';

const _standardMeta = '''
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  $_emptyTitle''';

String _tocTemplate(Iterable<_Demo> items) => '''
<!DOCTYPE html>
<html lang="en">
<head>
  ${_indent(_analytics, 2)}
$_standardMeta
  <meta name="generator" content="https://pub.dartlang.org/packages/peanut">
  <style>
    body {
      font-family: "Google Sans", "Roboto", sans-serif;
      text-align: center;
    }
    a {
      text-decoration: none;
      color: #1389FD;
    }
    a:hover {
      text-decoration: underline;
    }
    #toc {
      text-align: left;
      display: flex;
      flex-wrap: wrap;
      align-self: center;
      margin: 0 auto;
      align-content: space-between;
      justify-content: center;
    }
    #toc > div {
      width: 300px;
      padding: 1rem;
      margin: 0.5rem;
      border: 1px solid rgba(0, 0, 0, 0.125);
      border-radius: 4px;
    }
    #toc > div img {
      display: block;
      margin: 0 auto 1rem;
    }
    .demo-title {
      font-size: 1.25rem;
    }
    #toc > div p {
      margin-top: 0.5rem;
      margin-bottom: 0;
    }
  </style>
</head>
<body>
  <h2><a href='https://flutter.dev/web'>Flutter for web</a> samples</h2>
  <a href='https://github.com/flutter/samples/tree/master/web'>Sample source code</a>
  <div id="toc">
    $_itemsReplace
  </div>
</body>
</html>
'''
    .replaceFirst(
        _itemsReplace, _indent(items.map((d) => d.html).join('\n'), 4))
    .replaceFirst(_emptyTitle, '<title>Flutter for web samples</title>');
