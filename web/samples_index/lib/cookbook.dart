// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file

import 'dart:io';

import 'package:html/parser.dart' show parse;
import 'package:path/path.dart' as path;
import 'package:samples_index/src/data.dart';

/// Utilities for generating cookbook article data
import 'package:webdriver/io.dart';

class CookbookScraper {
  late WebDriver _driver;

  Future init() async {
    _driver = await createDriver(desired: <String, dynamic>{});
  }

  Future dispose() async {
    await _driver.quit();
  }

  Future<List<String>> fetchCookbookLinks() async {
    var flutterUrl = 'https://flutter.dev';
    var url = Uri.parse('$flutterUrl/docs/cookbook');
    await _driver.get(url);
    var pageContent = await _driver.pageSource;
    var page = parse(pageContent);
    var links = page.querySelectorAll('main>.container>ul>li>a');
    return links.map((e) => '$flutterUrl${e.attributes["href"]}').toList();
  }

  Future<Sample> getMetadata(String url) async {
    await _driver.get(Uri.parse(url));
    var pageContent = await _driver.pageSource;
    var page = parse(pageContent);
    var search = 'main>.container>header>h1';
    var h1 = page.querySelector(search);
    if (h1 == null) {
      throw ('Could not find match for $search on page $url');
    }
    var name = h1.text;
    var description = page.querySelectorAll('main>.container>p').first.text;

    var urlSegments = Uri.parse(url).pathSegments;
    var category = urlSegments[urlSegments.length - 2];

    return Sample(
      name: name,
      description: description,
      author: 'Flutter',
      type: 'cookbook',
      screenshots: [Screenshot(screenshotPath(url), 'Cookbook article')],
      tags: ['cookbook', category],
      source: url,
      difficulty: 'advanced',
    );
  }

  Future takeScreenshot(String url) async {
    var screenshot = await _driver.captureScreenshotAsList();
    var file = File('web/${screenshotPath(url)}');
    await file.create(recursive: true);
    await file.writeAsBytes(screenshot);
  }
}

String screenshotPath(String url) {
  var filename = parseFileName(url);
  return 'images/cookbook/$filename.png';
}

/// Parses a filename from a cookbook link. E.g.
/// `https://flutter.dev/docs/cookbook/navigation/returning-data.html` changes
/// to `returning_data.png`
String parseFileName(String link) {
  var p = path.basename(link);
  var dot = p.indexOf('.');
  var detailName = p.substring(0, dot);
  // var categoryName = path.split(link);
  var components = path.split(link);
  var categoryName = components[components.length - 2];
  return '$categoryName-$detailName';
}
