// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
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

void main() {
  group('Testing App State Management Tests', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    testWidgets('Verifying add method', (tester) async {
      await tester.pumpWidget(createFavoritesScreen());

      //  Add an item to the list.
      favoritesList.add(30);
      await tester.pumpAndSettle();

      // Check if the new item appears in the list.
      expect(find.text('Item 30'), findsOneWidget);
    });

    testWidgets('Verifying remove method', (tester) async {
      await tester.pumpWidget(createFavoritesScreen());

      // Remove an item from the list.
      favoritesList.remove(30);
      await tester.pumpAndSettle();

      // Verify if it disappears.
      expect(find.text('Item 30'), findsNothing);
    });
  });
}
