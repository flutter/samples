// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animations/src/misc/card_swipe.dart';
import 'package:flutter/material.dart' hide Card;
import 'package:flutter_test/flutter_test.dart';

Widget createCardSwipeScreen() => const MaterialApp(
      home: CardSwipeDemo(),
    );

void main() {
  group('Card Swipe Tests', () {
    testWidgets('One card swiped out', (tester) async {
      await tester.pumpWidget(createCardSwipeScreen());

      // Get the total number of cards available.
      var totalCards = tester.widgetList(find.byType(Card)).length;

      // Ensure card is visible.
      await tester.ensureVisible(find.byType(Card).last);

      // Swipe out one card.
      await tester.drag(find.byType(Card).last, const Offset(100.0, 0.0));
      await tester.pumpAndSettle();

      // Check if removed properly.
      expect(tester.widgetList(find.byType(Card)).length, lessThan(totalCards));
    });

    testWidgets('All cards swiped out', (tester) async {
      await tester.pumpWidget(createCardSwipeScreen());

      // Get the total number of cards availabe.
      var totalCards = tester.widgetList(find.byType(Card)).length;

      // Swipe out all cards.
      for (var i = 0; i < totalCards; i++) {
        // Swipe out one by one.
        await tester.drag(find.byType(Card).last, const Offset(100.0, 0.0));
        await tester.pumpAndSettle();
      }

      // Check if any card is remaining.
      expect(find.byType(Card), findsNothing);
    });

    testWidgets('Stack refilled with cards', (tester) async {
      await tester.pumpWidget(createCardSwipeScreen());

      // Get the total number of cards availabe.
      var totalCards = tester.widgetList(find.byType(Card)).length;

      // Swipe out one card.
      await tester.drag(find.byType(Card).last, const Offset(100.0, 0.0));
      await tester.pumpAndSettle();

      // Tap the Refill button.
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      // Check if the entire stack is refilled.
      expect(find.byType(Card), findsNWidgets(totalCards));
    });
  });
}
