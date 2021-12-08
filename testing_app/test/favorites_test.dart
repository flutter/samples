// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/models/favorites.dart';
import 'package:testing_app/screens/favorites.dart';

late Favorites favoritesList;

Widget createFavoritesScreen() => ChangeNotifierProvider<Favorites>(
      create: (context) {
        favoritesList = Favorites();
        return favoritesList;
      },
      child: const MaterialApp(
        home: FavoritesPage(),
      ),
    );

void addItems() {
  for (var i = 0; i < 5; i++) {
    favoritesList.add(i);
  }
}

void main() {
  group('Favorites Page Widget Tests', () {
    testWidgets('Test if Placeholder shows in case of empty list',
        (tester) async {
      await tester.pumpWidget(createFavoritesScreen());

      // Verify if the placeholder text shows up.
      expect(find.text('No favorites added.'), findsOneWidget);
    });

    testWidgets('Test if ListView shows up', (tester) async {
      await tester.pumpWidget(createFavoritesScreen());

      addItems();
      await tester.pumpAndSettle();

      // Verify if ListView shows up.
      expect(find.byType(ListView), findsOneWidget);
    });

    testWidgets('Testing Remove Button', (tester) async {
      await tester.pumpWidget(createFavoritesScreen());

      addItems();
      await tester.pumpAndSettle();

      // Get the total number of items available.
      final totalItems = tester.widgetList(find.byIcon(Icons.close)).length;

      // Remove one item.
      await tester.tap(find.byIcon(Icons.close).first);
      await tester.pumpAndSettle();

      // Check if removed properly.
      expect(
        tester.widgetList(find.byIcon(Icons.close)).length,
        lessThan(totalItems),
      );

      // Verify if the appropriate message is shown.
      expect(find.text('Removed from favorites.'), findsOneWidget);
    });
  });
}
