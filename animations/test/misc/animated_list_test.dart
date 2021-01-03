// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';
import 'package:animations/src/misc/animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget createAnimatedListDemoScreen() => MaterialApp(
      home: AnimatedListDemo(),
    );

void main() {
  group('Animated List Tests', () {
    testWidgets('Initial Length of List', (tester) async {
      await tester.pumpWidget(createAnimatedListDemoScreen());

      // Get the initial Length of List.
      var initialLength = tester.widgetList(find.byType(ListTile)).length;

      // initial length of List should be equal to 5.
      expect(
        initialLength,
        equals(5),
      );
    });

    testWidgets('Length of List increases on Add Icon Button tap',
        (tester) async {
      await tester.pumpWidget(createAnimatedListDemoScreen());

      // Get the initial Length of List.
      var initialLength = tester.widgetList(find.byType(ListTile)).length;

      // Tap on the Add Icon Button.
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();

      // Get the new Length of List.
      var newLength = tester.widgetList(find.byType(ListTile)).length;

      // new Length should be greater than initial Length by one.
      expect(
        newLength,
        equals(initialLength + 1),
      );
    });

    testWidgets('Length of List decreases on Delete Icon Button tap',
        (tester) async {
      await tester.pumpWidget(createAnimatedListDemoScreen());

      // Get the initial Length of List.
      var initialLength = tester.widgetList(find.byType(ListTile)).length;

      // Tap on the Delete Icon Button.
      // Randomly selecting a Delete Icon Button for tap.
      await tester.tap(find.byIcon(Icons.delete).at(Random().nextInt(5)));
      await tester.pumpAndSettle();

      // Get the new Length of List.
      var newLength = tester.widgetList(find.byType(ListTile)).length;

      // new Length should be less than initial Length by one.
      expect(
        newLength,
        equals(initialLength - 1),
      );
    });

    testWidgets('All ListTiles deleted', (tester) async {
      await tester.pumpWidget(createAnimatedListDemoScreen());

      // Iterating over all the Delete Icon Buttons.
      for (var i = 0; i < 5; i++) {
        // Tap on the Delete Icon
        await tester.tap(find.byIcon(Icons.delete).first);
        await tester.pumpAndSettle();
      }

      // Get the final Length of List.
      var finalLength = tester.widgetList(find.byType(ListTile)).length;

      // new Length should be zero
      expect(
        finalLength,
        equals(0),
      );
    });
  });
}
