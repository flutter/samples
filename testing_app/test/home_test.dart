// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/main.dart';
import 'package:testing_app/models/favorites.dart';

Widget createHomeScreen() => ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: MaterialApp.router(
        routerConfig: router(),
      ),
    );

void main() {
  group('Home Page Widget Tests', () {
    testWidgets('Testing if ListView shows up', (tester) async {
      await tester.pumpWidget(createHomeScreen());

      // Verify if ListView shows up.
      expect(find.byType(ListView), findsOneWidget);
    });

    testWidgets('Testing Scrolling', (tester) async {
      await tester.pumpWidget(createHomeScreen());

      // Check if "Item 0" is present on the screen.
      expect(find.text('Item 0'), findsOneWidget);

      // Fling i.e scroll down.
      await tester.fling(find.byType(ListView), const Offset(0, -200), 3000);
      await tester.pumpAndSettle();

      // Check if "Item 0" disappeared.
      expect(find.text('Item 0'), findsNothing);
    });

    testWidgets('Testing IconButtons', (tester) async {
      await tester.pumpWidget(createHomeScreen());

      // Check if any solid favorite icon is present.
      expect(find.byIcon(Icons.favorite), findsNothing);

      // Tap the first item's icon to add it to favorites.
      await tester.tap(find.byIcon(Icons.favorite_border).first);
      await tester.pumpAndSettle(const Duration(seconds: 1));

      // Verify if the appropriate message is shown.
      expect(find.text('Added to favorites.'), findsOneWidget);

      // Check if any solid favorite icon shows up.
      expect(find.byIcon(Icons.favorite), findsWidgets);

      // Tap the first item's icon which has filled icon to
      // remove it from favorites.
      await tester.tap(find.byIcon(Icons.favorite).first);
      await tester.pumpAndSettle(const Duration(seconds: 1));

      // Verify if the appropriate message is shown.
      expect(find.text('Removed from favorites.'), findsOneWidget);

      // Check if the filled icon changes back to bordered icon.
      expect(find.byIcon(Icons.favorite), findsNothing);
    });

    testWidgets('Testing Navigation', (tester) async {
      await tester.pumpWidget(createHomeScreen());

      // Tap the Favorites button in the app bar
      await tester.tap(find.text('Favorites'));
      await tester.pumpAndSettle();

      // Verify if the empty favorites screen is shown.
      expect(find.text('No favorites added.'), findsOneWidget);
    });
  });
}
