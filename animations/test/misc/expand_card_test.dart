// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animations/src/misc/expand_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget createExpandCardScreen() => const MaterialApp(
      home: ExpandCardDemo(),
    );

void main() {
  group('ExpandCard Tests', () {
    testWidgets('ExpandCard changes size on tap', (tester) async {
      await tester.pumpWidget(createExpandCardScreen());

      // Get the initial size of ExpandCard.
      var initialSize = tester.getSize(find.byType(ExpandCard));

      // Tap on the ExpandCard.
      await tester.tap(find.byType(ExpandCard));
      await tester.pumpAndSettle();

      // The size of ExpandCard must change once tapped.
      // The initialSize should be less than current ExpandCard size.
      expect(
        initialSize,
        lessThan(tester.getSize(find.byType(ExpandCard))),
      );
    });

    testWidgets('ExpandCard changes image on tap', (tester) async {
      await tester.pumpWidget(createExpandCardScreen());

      var initialImage = tester.widget(find.byType(Image).last);

      // Tap on ExpandCard.
      await tester.tap(find.byType(ExpandCard));
      await tester.pumpAndSettle();

      // Once tapped, the image should change.
      expect(
        initialImage,
        isNot(equals(tester.widget(find.byType(Image).last))),
      );
    });
  });
}
