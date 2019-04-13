import 'dart:math';

import 'package:english_words/english_words.dart';
import 'package:flutter/foundation.dart';
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

class PlatformWidget extends StatelessWidget {
  const PlatformWidget({
    Key key,
    @required this.androidBuilder,
    @required this.iosBuilder,
    this.child,
  }) : assert(androidBuilder != null),
       assert(iosBuilder != null),
       super(key: key);

  final TransitionBuilder androidBuilder;
  final TransitionBuilder iosBuilder;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        return androidBuilder(context, child);
      case TargetPlatform.iOS:
        return iosBuilder(context, child);
    }

    assert(false, 'Unexpected platform');
    return null;
  }
}