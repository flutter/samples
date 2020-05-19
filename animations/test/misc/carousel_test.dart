import 'package:animations/src/misc/carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget createCarouselDemoScreen() => MaterialApp(
      home: CarouselDemo(),
    );

void main() {
  testWidgets('CarouselDemo swipe test', (tester) async {
    await tester.pumpWidget(createCarouselDemoScreen());

    // Get the images available on the screen during initial state.
    List<Widget> imagesList = tester.widgetList(find.byType(Image)).toList();
    expect(imagesList.length, 2);

    // Swipe the Carousel.
    await tester.fling(find.byType(CarouselDemo), Offset(-400, 0), 800);
    await tester.pumpAndSettle();

    // Get the images available on the screen after swipe.
    imagesList = tester.widgetList(find.byType(Image)).toList();
    expect(imagesList.length, 3);
  });
}
