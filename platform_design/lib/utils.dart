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

class PressableCard extends StatefulWidget {
  const PressableCard({ this.onPressed, this.child });

  final VoidCallback onPressed;
  final Widget child;

  @override
  State<StatefulWidget> createState() => new PressableCardState();
}

class PressableCardState extends State<PressableCard> with SingleTickerProviderStateMixin {
  bool pressed = false;
  AnimationController controller;
  Animation<double> elevationAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 40),
    );
    elevationAnimation = controller
        .drive(CurveTween(curve: Curves.easeInOutCubic));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) { controller.forward(); },
      onPointerUp: (_) { controller.reverse(); },
        child: GestureDetector(
        onTap: () {
          if (widget.onPressed != null) {
            widget.onPressed();
          }
        },
        child: AnimatedBuilder(
          animation: elevationAnimation,
          child: widget.child,
          builder: (BuildContext context, Widget child) {
            return Transform.scale(
              scale: 1 - elevationAnimation.value * 0.03,
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                elevation: (1 - elevationAnimation.value) * 10 + 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                clipBehavior: Clip.antiAlias,
                child: child,
              ),
            );
          },
        ),
      ),
    );
  }
}
