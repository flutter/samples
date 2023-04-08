// Copyright 2023 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animations/src/basics/basics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget createAnimatedBuilderDemoScreen() => const MaterialApp(
      home: AnimatedBuilderDemo(),
    );

void main() {
  group('AnimatedBuilder Tests', () {
    testWidgets('AnimatedBuilder changes button color', (tester) async {
      await tester.pumpWidget(createAnimatedBuilderDemoScreen());

      // Get the initial color of the button.
      ElevatedButton button = tester.widget(find.byType(ElevatedButton));
      MaterialStateProperty<Color?>? initialColor =
          button.style!.backgroundColor;

      // Tap the button.
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      // Get the updated color of the button.
      button = tester.widget(find.byType(ElevatedButton));
      MaterialStateProperty<Color?>? updatedColor =
          button.style!.backgroundColor;

      // Check if the color has changed.
      expect(initialColor, isNot(updatedColor));
    });

    testWidgets('AnimatedBuilder animates button color', (tester) async {
      await tester.pumpWidget(createAnimatedBuilderDemoScreen());

      // Get the initial color of the button.
      ElevatedButton button = tester.widget(find.byType(ElevatedButton));
      MaterialStateProperty<Color?>? initialColor =
          button.style!.backgroundColor;

      // Tap the button to trigger the animation but don't wait for it to finish.
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();
      await tester.pump(const Duration(milliseconds: 400));

      // Check that the color has changed but not to the final color.
      button = tester.widget(find.byType(ElevatedButton));
      MaterialStateProperty<Color?>? changedColor =
          button.style!.backgroundColor;
      expect(initialColor, isNot(changedColor));

      // Wait for the animation to finish.
      await tester.pump(const Duration(milliseconds: 400));

      // Check that the color has changed to the final color.
      button = tester.widget(find.byType(ElevatedButton));
      MaterialStateProperty<Color?>? finalColor = button.style!.backgroundColor;
      expect(changedColor, isNot(finalColor));
    });
  });
}
