// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animations/src/misc/hero_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget createHeroAnimationDemoScreen() => const MaterialApp(
      home: HeroAnimationDemo(),
    );

void main() {
  group('Hero Animation Tests', () {
    testWidgets('Size of Container changes on Tap', (tester) async {
      await tester.pumpWidget(createHeroAnimationDemoScreen());

      // Get the initial Container.
      var initialContainer = tester.firstWidget(find.byType(Container));

      // Get the size of initial Container.
      var initialSize = tester.getSize(find.byWidget(initialContainer));

      // Tap on the Gesture Detector.
      await tester.tap(find.byType(GestureDetector));
      await tester.pumpAndSettle();

      // Get the final Container.
      var finalContainer = tester.firstWidget(find.byType(Container));

      // Get the size of final Container.
      var finalSize = tester.getSize(find.byWidget(finalContainer));

      // initialSize should be less than finalSize.
      expect(
        initialSize,
        lessThan(finalSize),
      );
    });

    testWidgets('Color of Container changes on Tap', (tester) async {
      await tester.pumpWidget(createHeroAnimationDemoScreen());

      // Get the initial Container.
      final initialContainer =
          tester.firstWidget(find.byType(Container)) as Container;

      // Initial color should be Color.grey[300].
      expect(
        (initialContainer.decoration as BoxDecoration).color,
        Colors.grey[300],
      );

      // Tap on the GestureDetector.
      await tester.tap(find.byType(GestureDetector));
      await tester.pumpAndSettle();

      // Get the final Container.
      final finalContainer =
          tester.firstWidget(find.byType(Container)) as Container;

      // Final color should not be same as initial color.
      expect(
        (finalContainer.decoration as BoxDecoration).color,
        isNot(
          equals((initialContainer.decoration as BoxDecoration).color),
        ),
      );
    });

    testWidgets('Screen Changes on Tap', (tester) async {
      await tester.pumpWidget(createHeroAnimationDemoScreen());

      // Get the initial Screen.
      final initialScreen = tester.firstWidget(find.byType(HeroAnimationDemo));

      // Tap on the GestureDetector.
      await tester.tap(find.byType(GestureDetector));
      await tester.pumpAndSettle();

      // Get the screen after navigation.
      final finalScreen = tester.firstWidget(find.byType(HeroPage));

      // initialScreen should not be same as finalScreen.
      expect(
        initialScreen,
        isNot(equals(finalScreen)),
      );
    });
  });
}
