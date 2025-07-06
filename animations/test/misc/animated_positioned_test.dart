// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animations/src/misc/animated_positioned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget createAnimatedPositionedDemoScreen() =>
    const MaterialApp(home: AnimatedPositionedDemo());

void main() {
  group('AnimatedPositioned Tests', () {
    testWidgets('Position of Button Changes on Tap', (tester) async {
      await tester.pumpWidget(createAnimatedPositionedDemoScreen());

      final button = find.byType(InkWell);

      // Get initial position of the widget.
      final initialPosition = tester.getTopLeft(button);
      expect(initialPosition, isNotNull);

      // Tap on the widget.
      await tester.tap(button);
      await tester.pumpAndSettle();

      // The new position should not be equal to initial position.
      final newPosition = tester.getTopLeft(button);
      expect(newPosition, isNot(offsetMoreOrLessEquals(initialPosition)));
    });
  });
}
