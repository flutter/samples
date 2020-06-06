// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file

import 'dart:io';
import 'dart:convert';

import 'package:grinder/grinder.dart';
import 'package:path/path.dart' as path;
import 'package:samples_index/samples_index.dart';
import 'package:samples_index/src/templates.dart' as templates;
import 'package:samples_index/cookbook.dart';
import 'package:image/image.dart' as image;

void main(args) => grind(args);

@Task('Run tests in the VM')
void testCli() async => await TestRunner().testAsync(platformSelector: 'vm');

@Task()
void analyze() {
  PubApp.local('tuneup')..run(['check']);
}

@Task('deploy')
@Depends(analyze, testCli, generate, buildRelease)
void deploy() {
  print('All tasks completed. ');
  print('');
}

@Task('Run build_runner to public/ directory')
@Depends(createThumbnails)
Future buildRelease() async {
  var app = PubApp.local('build_runner');
  await app.runAsync('build --release --output web:public --delete-conflicting-outputs'.split(' ').toList());
}

@DefaultTask('Build the project.')
@Depends(clean)
Future generate() async {
  var samples = await getSamples();
  print('Generating index for ${samples.length} samples...');
  var outputFile = File('web/index.html');
  await outputFile.create(recursive: true);
  await outputFile.writeAsString(templates.index(samples));
  var futures = <Future>[];
  for (var sample in samples) {
    var file = File('web/${sample.filename}.html');
    var future = file.create(recursive: true).then((_) async {
      await file.writeAsString(templates.description(sample));
    });
    futures.add(future);
  }
  await Future.wait(futures);
  print('Generated index for ${samples.length} samples.');
}

@Task('Scrape the cookbook for images and descriptions')
Future scrapeCookbook() async {
  var driver = await Process.start(
      'chromedriver', ['--port=4444', '--url-base=wd/hub', '--verbose']);
  await driver.stdout.pipe(stdout);
  await driver.stderr.pipe(stderr);
  var scraper = CookbookScraper();
  await scraper.init();
  var links = await scraper.fetchCookbookLinks();
  print('Scraping ${links.length} cookbook articles');
  var allSamples = <Sample>[];
  for (var link in links) {
    allSamples.add(await scraper.getMetadata(link));
    await scraper.takeScreenshot(link);
  }
  var file = File('lib/src/cookbook.json');
  await file.create();
  var encoder = JsonEncoder.withIndent('\t');
  await file.writeAsString(encoder.convert(Index(allSamples)));
  await scraper.dispose();
  var killed = driver.kill();
  if (!killed) {
    print('failed to kill chromedriver process');
  }
}

@Task('creates thumbnail images in web/images')
Future createThumbnails() async {
  await _createThumbnails(Directory('web/images'));
  await _createThumbnails(Directory('web/images/cookbook'));
}

// Creates a thumbnail image for each png file
Future _createThumbnails(Directory directory) async {
  var files = await directory.list().toList();
  var filesToWrite = <Future>{};

  for (var entity in files) {
    var extension = path.extension(entity.path);
    var filename = path.basenameWithoutExtension(entity.path);
    if (extension != '.png' || entity is! File || filename.endsWith('_thumb')) {
      continue;
    }

    var file = entity as File;
    var pathPrefix = path.dirname(file.path);
    var thumbnailFile = File(path.join(pathPrefix, filename + '_thumb.png'));

    var img = image.decodeImage(await file.readAsBytes());
    var resized = image.copyResize(img, width: 640);
    filesToWrite.add(thumbnailFile.writeAsBytes(image.encodePng(resized)));
  }

  await Future.wait(filesToWrite);
}

@Task('remove generated HTML files')
Future clean() async {
  var tasks = <Future>[];
  await for (var file in Directory('web').list(recursive: true)) {
    if (path.extension(file.path) == '.html') {
      tasks.add(file.delete());
    }
  }
  await Future.wait(tasks);
}
