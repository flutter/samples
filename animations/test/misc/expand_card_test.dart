// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animations/src/misc/expand_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget createExpandCardScreen() => MaterialApp(
      home: ExpandCardDemo(),
    );

void main() {
  testWidgets('size of ExpandCard changes on tap', (tester) async {
    await tester.pumpWidget(createExpandCardScreen());

    Size size = tester.getSize(find.byType(AnimatedContainer));

    // size of Expand Card is 128 initially
    expect(size.width, 128);

    // tap at the center of the screen
    await tester.tapAt(const Offset(400.0, 300.0));
    await tester.pumpAndSettle(Duration(milliseconds: 300));

    size = tester.getSize(find.byType(AnimatedContainer));
    // size of Expand Card is 256, when card is selected
    expect(size.width, 256);
  });

  testWidgets('assets images are loaded properly', (tester) async {
    await tester.pumpWidget(createExpandCardScreen());

    AnimatedCrossFade animatedCrossFade =
        tester.widget(find.byType(AnimatedCrossFade));

    Image firstImage = animatedCrossFade.firstChild as Image;
    Image secondImage = animatedCrossFade.secondChild as Image;

    AssetImage assetImage = firstImage.image as AssetImage;
    // The first widget image is is 'assets/eat_cape_town_sm.jpg'
    expect(assetImage.assetName, 'assets/eat_cape_town_sm.jpg');

    assetImage = secondImage.image as AssetImage;
    // The second widget image is 'assets/eat_new_orleans_sm.jpg'
    expect(assetImage.assetName, 'assets/eat_new_orleans_sm.jpg');
  });

  testWidgets('ExpandCard changes image on tap', (tester) async {
    await tester.pumpWidget(createExpandCardScreen());

    AnimatedCrossFade animatedCrossFade =
        tester.widget(find.byType(AnimatedCrossFade));
    // initially the first child is shown
    expect(animatedCrossFade.crossFadeState.index, 0);

    // tap at the center of the screen
    await tester.tapAt(const Offset(400.0, 300.0));
    await tester.pumpAndSettle(Duration(milliseconds: 300));

    animatedCrossFade = tester.widget(find.byType(AnimatedCrossFade));
    //shows the second child when ExpandCard is tapped
    expect(animatedCrossFade.crossFadeState.index, 1);
  });
}
