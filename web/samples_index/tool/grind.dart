import 'dart:io';
import 'dart:convert';

import 'package:grinder/grinder.dart';
import 'package:path/path.dart' as path;
import 'package:samples_index/samples_index.dart';
import 'package:samples_index/src/templates.dart' as templates;
import 'package:samples_index/cookbook.dart';

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
  print('All tasks completed. To deploy to Firebase, run:');
  print('');
  print('   firebase deploy');
  print('');
}

@Task('Run build_runner to public/ directory')
Future buildRelease() async {
  var app = PubApp.local('build_runner');
  await app.runAsync('build --release --output web:public'.split(' ').toList());
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
