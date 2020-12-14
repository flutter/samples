// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animations/src/misc/hero_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget createHeroAnimationDemoScreen() => MaterialApp(
      home: HeroAnimationDemo(),
    );

void main() {
  group('Hero Animation Tests', () {
    testWidgets('Size of Container changes on Tap', (tester) async {
      await tester.pumpWidget(createHeroAnimationDemoScreen());

      // Get the initial Container.
      final initialContainer =
          tester.firstWidget(find.byType(Container)) as Container;

      // Get initial height of Container.
      // In this case minHeight is equal to maxHeight.
      var initialHeight =
          initialContainer.constraints.heightConstraints().maxHeight;

      // Get initial width of Container.
      // In this case minWidth is equal to maxWidth.
      var initialWidth =
          initialContainer.constraints.widthConstraints().maxWidth;

      // Calculate initial area of Container
      var initialArea = initialHeight * initialWidth;

      // Tap on the GestureDetector.
      await tester.tap(find.byType(GestureDetector));
      await tester.pumpAndSettle();

      // Get the final Container.
      final finalContainer =
          tester.firstWidget(find.byType(Container)) as Container;

      // Get height of Container.
      // In this case minHeight is equal to maxHeight.
      var finalHeight =
          finalContainer.constraints.heightConstraints().maxHeight;

      // Get width of Container.
      // In this case minWidth is equal to maxWidth.
      var finalWidth = finalContainer.constraints.widthConstraints().maxWidth;

      // Calculate final area of Container
      var finalArea = finalHeight * finalWidth;

      expect(
        initialArea,
        lessThan(finalArea),
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

      // Final Color should be Colors.white.
      expect(
        (finalContainer.decoration as BoxDecoration).color,
        Colors.white,
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
