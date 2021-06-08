// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animations/src/misc/focus_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget createFocusImageScreen() => const MaterialApp(
      home: FocusImageDemo(),
    );

void main() {
  group('FocusImage Tests', () {
    testWidgets('Size of ink well changes on tap', (tester) async {
      await tester.pumpWidget(createFocusImageScreen());

      // Get the initial inkwell.
      final initialInkwell = tester.widget(find.byType(InkWell).at(0));

      // Get the size of initial inkwell.
      var initialSize = tester.getSize(find.byWidget(initialInkwell));

      // Tap on the ink well at index 0.
      await tester.tap(find.byType(InkWell).at(0));
      await tester.pumpAndSettle();

      // Get the final inkwell.
      final finalInkwell = tester.widget(find.byType(InkWell).at(0));

      // Get the size of final inkwell.
      var finalSize = tester.getSize(find.byWidget(finalInkwell));

      // Final size should be greater than initial size.
      expect(
        finalSize,
        greaterThan(initialSize),
      );
    });

    testWidgets('Final inkwell on tap goes back to the grid', (tester) async {
      await tester.pumpWidget(createFocusImageScreen());

      // Tap on the ink well at index 0.
      await tester.tap(find.byType(InkWell).at(0));
      await tester.pumpAndSettle();

      // Tap on the final inkwell.
      await tester.tap(find.byType(InkWell));
      await tester.pumpAndSettle();

      // The grid view should appear again.
      expect(find.byType(Grid), findsOneWidget);
    });
  });
}
