import 'dart:math';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

const _myListOfRandomColors = <MaterialColor>[
  Colors.red, Colors.blue, Colors.teal, Colors.yellow, Colors.amber,
  Colors.deepOrange, Colors.green, Colors.indigo, Colors.lime, Colors.pink,
  Colors.orange,
];

List<MaterialColor> getRandomColors(int amount) {
  final random = Random();
  return List<MaterialColor>.generate(amount, (int index) {
    return _myListOfRandomColors[random.nextInt(_myListOfRandomColors.length)];
  });
}

List<String> getRandomNames(int amount) {
  return generateWordPairs(maxSyllables: 5)
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