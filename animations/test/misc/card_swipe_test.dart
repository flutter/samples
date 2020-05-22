// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animations/src/misc/card_swipe.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget createCardSwipeScreen() => MaterialApp(
      home: CardSwipeDemo(),
    );

void main() {
  group('Card Swipe Tests', () {
    testWidgets('One card swiped out', (tester) async {
      await tester.pumpWidget(createCardSwipeScreen());

      // Get the total number of cards available.
      var totalCards = tester.widgetList(find.byType(SwipeableCard)).length;

      // Swipe out one card.
      await tester.drag(find.byType(SwipeableCard).first, Offset(100.0, 0.0));
      await tester.pumpAndSettle();

      // Check if removed properly.
      expect(tester.widgetList(find.byType(SwipeableCard)).length,
          lessThan(totalCards));
    });

    testWidgets('All cards swiped out', (tester) async {
      await tester.pumpWidget(createCardSwipeScreen());

      // Get the total number of cards availabe.
      var totalCards = tester.widgetList(find.byType(SwipeableCard)).length;

      // Swipe out all cards.
      for (var i = 0; i < totalCards; i++) {
        // Swipe out one by one.
        await tester.drag(find.byType(SwipeableCard).first, Offset(100.0, 0.0));
        await tester.pumpAndSettle();
      }

      // Check if any card is remaining.
      expect(find.byType(SwipeableCard), findsNothing);
    });

    testWidgets('Stack refilled with cards', (tester) async {
      await tester.pumpWidget(createCardSwipeScreen());

      // Get the total number of cards availabe.
      var totalCards = tester.widgetList(find.byType(SwipeableCard)).length;

      // Swipe out one card.
      await tester.drag(find.byType(SwipeableCard).first, Offset(100.0, 0.0));
      await tester.pumpAndSettle();

      // Tap the Refill button.
      await tester.tap(find.byType(RaisedButton));
      await tester.pumpAndSettle();

      // Check if the entire stack is refilled.
      expect(find.byType(SwipeableCard), findsNWidgets(totalCards));
    });
  });
}
