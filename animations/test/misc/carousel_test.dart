// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animations/src/misc/carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget createCarouselDemoScreen() => MaterialApp(
      home: CarouselDemo(),
    );

void main() {
  group('CarouselDemo tests', () {
    testWidgets('Swipe left moves carousel', (tester) async {
      await tester.pumpWidget(createCarouselDemoScreen());

      // Get the images available on the screen during initial state.
      var imageList = tester.widgetList(find.byType(Image)).toList();
      expect(imageList.length, 2);

      // Swipe the Carousel.
      await tester.fling(find.byType(CarouselDemo), const Offset(-400, 0), 800);
      await tester.pumpAndSettle();

      // Get the images available on the screen after swipe.
      imageList = tester.widgetList(find.byType(Image)).toList();
      expect(imageList.length, 3);
    });
  });
}
