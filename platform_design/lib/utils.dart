import 'dart:math';

import 'package:english_words/english_words.dart';
// We're reimplementing generateWordPair because english_words's
// implementation has some performance issues.
// https://github.com/filiph/english_words/issues/9
// ignore: implementation_imports
import 'package:english_words/src/words/unsafe.dart';
import 'package:flutter/material.dart';

const _myListOfRandomColors = [
  Colors.red, Colors.blue, Colors.teal, Colors.yellow, Colors.amber,
  Colors.deepOrange, Colors.green, Colors.indigo, Colors.lime, Colors.pink,
  Colors.orange,
];

final _random = Random();

Iterable wordPairIterator = generateWordPair();
Iterable<WordPair> generateWordPair() sync* {
  bool filterWord(String word) => unsafe.contains(word);
  String pickRandom(List<String> list) => list[_random.nextInt(list.length)];

  String prefix;
  while (true) {
    if (_random.nextBool()) {
      prefix = pickRandom(adjectives);
    } else {
      prefix = pickRandom(nouns);
    }
    final suffix = pickRandom(nouns);

    if (filterWord(prefix) || filterWord(suffix))
      continue;

    final wordPair = WordPair(prefix, suffix);
    yield wordPair;
  }
}

List<MaterialColor> getRandomColors(int amount) {
  return List<MaterialColor>.generate(amount, (int index) {
    return _myListOfRandomColors[_random.nextInt(_myListOfRandomColors.length)];
  });
}

List<String> getRandomNames(int amount) {
  return wordPairIterator
      .take(amount)
      .map((var pair) => capitalizePair(pair))
      .toList();
}

String capitalize(String word) {
  return '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}';
}

String capitalizePair(WordPair pair) {
  return '${capitalize(pair.first)} ${capitalize(pair.second)}';
}
