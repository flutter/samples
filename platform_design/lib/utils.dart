// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

import 'package:english_words/english_words.dart';
// ignore: implementation_imports
import 'package:flutter/material.dart';

// This file has a number of platform-agnostic non-Widget utility functions.

const _myListOfRandomColors = [
  Colors.red,
  Colors.blue,
  Colors.teal,
  Colors.yellow,
  Colors.amber,
  Colors.deepOrange,
  Colors.green,
  Colors.indigo,
  Colors.lime,
  Colors.pink,
  Colors.orange,
];

final _random = Random();

// Avoid customizing the word generator, which can be slow.
// https://github.com/filiph/english_words/issues/9
final wordPairIterator = generateWordPairs();

String generateRandomHeadline() {
  final artist = capitalizePair(wordPairIterator.first);

  return switch (_random.nextInt(10)) {
    0 => '$artist says ${nouns[_random.nextInt(nouns.length)]}',
    1 => '$artist arrested due to ${wordPairIterator.first.join(' ')}',
    2 => '$artist releases ${capitalizePair(wordPairIterator.first)}',
    3 => '$artist talks about his ${nouns[_random.nextInt(nouns.length)]}',
    4 => '$artist talks about her ${nouns[_random.nextInt(nouns.length)]}',
    5 => '$artist talks about their ${nouns[_random.nextInt(nouns.length)]}',
    6 =>
      '$artist says their music is inspired by ${wordPairIterator.first.join(' ')}',
    7 =>
      '$artist says the world needs more ${nouns[_random.nextInt(nouns.length)]}',
    8 =>
      '$artist calls their band ${adjectives[_random.nextInt(adjectives.length)]}',
    9 =>
      '$artist finally ready to talk about ${nouns[_random.nextInt(nouns.length)]}',
    _ => 'Failed to generate news headline',
  };
}

List<MaterialColor> getRandomColors(int amount) {
  return List<MaterialColor>.generate(amount, (index) {
    return _myListOfRandomColors[_random.nextInt(_myListOfRandomColors.length)];
  });
}

List<String> getRandomNames(int amount) {
  return wordPairIterator
      .take(amount)
      .map((pair) => capitalizePair(pair))
      .toList();
}

String capitalize(String word) {
  return '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}';
}

String capitalizePair(WordPair pair) {
  return '${capitalize(pair.first)} ${capitalize(pair.second)}';
}
