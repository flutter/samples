// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file

import 'dart:io';

import 'package:checked_yaml/checked_yaml.dart';
import 'package:samples_index/browser.dart';
import 'package:samples_index/samples_index.dart';
import 'package:test/test.dart';

void main() {
  group('YAML', () {
    test('parsing', () async {
      var file = File('test/yaml/single.yaml');
      var contents = await file.readAsString();
      expect(contents, isNotEmpty);

      var index = checkedYamlDecode(
          contents, (m) => m != null ? Index.fromJson(m) : null,
          sourceUrl: file.uri);
      if (index == null) {
        throw ('unable to load YAML from $file');
      }
      expect(index.samples, isNotEmpty);

      var sample = index.samples.first;
      expect(sample, isNotNull);
      expect(sample.name, 'Kittens');
      expect(sample.screenshots, hasLength(2));
      expect(sample.source, 'https://github.com/johnpryan/kittens');
      expect(sample.description, 'A sample kitten app');
      expect(sample.difficulty, 'beginner');
      expect(sample.widgets, hasLength(2));
      expect(sample.widgets.first, 'AnimatedBuilder');
      expect(sample.packages, hasLength(2));
      expect(sample.packages.first, 'json_serializable');
      expect(sample.tags, hasLength(3));
      expect(sample.tags[1], 'kittens');
      expect(sample.platforms, hasLength(3));
      expect(sample.links, hasLength(2));
      expect(sample.links[1].text, 'author');
      expect(sample.links[1].href, 'https://jpryan.me');
      expect(sample.type, 'sample');
      expect(sample.date, DateTime.parse('2019-12-15T02:59:43.1Z'));
      expect(sample.channel, 'stable');
    });
  });

  group('searching', () {
    test('search attributes', () async {
      var file = File('test/yaml/single.yaml');
      var contents = await file.readAsString();
      expect(contents, isNotEmpty);

      var index = checkedYamlDecode(
          contents, (m) => m != null ? Index.fromJson(m) : null,
          sourceUrl: file.uri);
      if (index == null) {
        throw ('unable to load YAML from $file');
      }
      var sample = index.samples.first;
      expect(
          sample.searchAttributes.split(' '),
          containsAll(const <String>[
            'kittens',
            'tag:beginner',
            'tag:kittens',
            'tag:cats',

            // Verify tags are searchable without the prefix
            'beginner',
            'kittens',
            'cats',

            'platform:web',
            'platform:ios',
            'platform:android',

            // Verify platforms are searchable without the prefix
            'web',
            'ios',
            'android',

            'widget:AnimatedBuilder',
            'widget:FutureBuilder',
            'package:json_serializable',
            'package:path',

            'type:sample',
          ]));
    });

    test('matchesQuery', () {
      var attributes = 'kittens '
          'tag:beginner '
          'tag:kittens '
          'tag:cats '
          'platform:web '
          'platform:ios '
          'platform:android '
          'widget:AnimatedBuilder '
          'widget:FutureBuilder '
          'package:json_serializable '
          'package:path '
          'type:sample';

      // Test if various queries match these attributes
      expect(matchesQuery('foo', attributes), false);
      expect(matchesQuery('kittens', attributes), true);
      expect(matchesQuery('tag:cats', attributes), true);
      expect(matchesQuery('tag:dogs', attributes), false);
      expect(matchesQuery('package:path', attributes), true);

      // Test if partial queries match these attributes
      expect(matchesQuery('kitten', attributes), true);

      // Test if multiple keywords match
      expect(matchesQuery('kittens tag:cats', attributes), true);
      expect(matchesQuery('kitten tag:cats', attributes), true);
      expect(matchesQuery('tag:beginner dogs', attributes), false);
      expect(matchesQuery('asdf ', attributes), false);

      // Test if queries match by type
      expect(matchesQuery('type:sample', attributes), true);
      expect(matchesQuery('type:cookbook', attributes), false);
      expect(matchesQuery('kittens type:cookbook', attributes), false);
    });
  });

  group('Hash parameters', () {
    test('can be parsed', () {
      expect(parseHash('#?search=kittens&platform=web'),
          containsPair('search', 'kittens'));
      expect(parseHash('#?search=kittens&platform=web'),
          containsPair('platform', 'web'));
      expect(parseHash('#?type=sample'), containsPair('type', 'sample'));
      expect(parseHash('#?type=cookbook'), containsPair('type', 'cookbook'));
    });

    test('can be set', () {
      expect(
          formatHash({
            'search': 'kittens',
            'platform': 'web',
          }),
          equals('?search=kittens&platform=web'));
    });

    test('creates search attributes', () {
      expect(
          searchQueryFromParams({
            'search': 'kittens',
            'platform': 'web',
            'type': 'sample',
          }),
          equals('kittens type:sample platform:web'));
      expect(
          searchQueryFromParams({
            'search': 'kittens',
          }),
          equals('kittens'));
      expect(searchQueryFromParams({}), equals(''));
    });
  });
}
