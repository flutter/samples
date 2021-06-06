// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animations/src/misc/animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget createAnimatedListDemoScreen() => const MaterialApp(
      home: AnimatedListDemo(),
    );

void main() {
  group('Animated List Tests', () {
    testWidgets('Initial length of list', (tester) async {
      await tester.pumpWidget(createAnimatedListDemoScreen());

      // Get the initial length of list.
      var initialLength = tester.widgetList(find.byType(ListTile)).length;

      // Initial length of list should be equal to 5.
      expect(
        initialLength,
        equals(5),
      );
    });

    testWidgets('Length of list increases on Add Icon Button tap',
        (tester) async {
      await tester.pumpWidget(createAnimatedListDemoScreen());

      // Get the initial length of list.
      var initialLength = tester.widgetList(find.byType(ListTile)).length;

      // Tap on the Add Icon Button.
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();

      // Get the new length of list.
      var newLength = tester.widgetList(find.byType(ListTile)).length;

      // New length should be greater than initial length by one.
      expect(
        newLength,
        equals(initialLength + 1),
      );
    });

    testWidgets(
        'Length of list decreases on Delete Icon Button tap at middle index',
        (tester) async {
      await tester.pumpWidget(createAnimatedListDemoScreen());

      // Get the initial length of list.
      var initialLength = tester.widgetList(find.byType(ListTile)).length;

      // Tap on the Delete Icon Button at middle index.
      await tester.tap(find.byIcon(Icons.delete).at(initialLength ~/ 2));
      await tester.pumpAndSettle();

      // Get the new length of list.
      var newLength = tester.widgetList(find.byType(ListTile)).length;

      // New length should be less than initial length by one.
      expect(
        newLength,
        equals(initialLength - 1),
      );
    });

    testWidgets(
        'Length of list decreases on Delete Icon Button tap at start index',
        (tester) async {
      await tester.pumpWidget(createAnimatedListDemoScreen());

      // Get the initial length of list.
      var initialLength = tester.widgetList(find.byType(ListTile)).length;

      // Tap on the Delete Icon Button at start index.
      await tester.tap(find.byIcon(Icons.delete).at(0));
      await tester.pumpAndSettle();

      // Get the new length of list.
      var newLength = tester.widgetList(find.byType(ListTile)).length;

      // New length should be less than initial length by one.
      expect(
        newLength,
        equals(initialLength - 1),
      );
    });

    testWidgets(
        'Length of list decreases on Delete Icon Button tap at end index',
        (tester) async {
      await tester.pumpWidget(createAnimatedListDemoScreen());

      // Get the initial length of list.
      var initialLength = tester.widgetList(find.byType(ListTile)).length;

      // Tap on the Delete Icon Button at end index.
      await tester.tap(find.byIcon(Icons.delete).at(initialLength - 1));
      await tester.pumpAndSettle();

      // Get the new length of list.
      var newLength = tester.widgetList(find.byType(ListTile)).length;

      // New Length should be less than initial length by one.
      expect(
        newLength,
        equals(initialLength - 1),
      );
    });

    testWidgets('All ListTiles deleted', (tester) async {
      await tester.pumpWidget(createAnimatedListDemoScreen());

      // Get the initial length of list.
      var initialLength = tester.widgetList(find.byType(ListTile)).length;

      // Iterating over all the Delete Icon Buttons.
      for (var i = 0; i < initialLength; i++) {
        // Tap on the Delete Icon
        await tester.tap(find.byIcon(Icons.delete).first);
        await tester.pumpAndSettle();
      }

      // Get the final length of list.
      var finalLength = tester.widgetList(find.byType(ListTile)).length;

      // New length should be zero.
      expect(
        finalLength,
        equals(0),
      );
    });
  });
}
