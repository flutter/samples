import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/models/favorites.dart';
import 'package:testing_app/screens/favorites.dart';

Future<void> loadFonts() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    rootBundle.load('fonts/Raleway-Regular.ttf').then((fontData) {
      final loader = FontLoader('Raleway')..addFont(Future.value(fontData));
      return loader.load();
    }),
    rootBundle.load('fonts/Raleway-Italic.ttf').then((fontData) {
      final loader = FontLoader('Raleway')..addFont(Future.value(fontData));
      return loader.load();
    }),
  ]);
}

void main() {
  setUpAll(() async {
    await loadFonts();
  });

  group('Golden Test for FavoritesPage', () {
    testWidgets('FavoritesPage with no favorites', (WidgetTester tester) async {
      // Create a Favorites model with no items
      await tester.pumpWidget(
        ChangeNotifierProvider<Favorites>(
          create: (_) => Favorites(),
          child: const MaterialApp(
            home: FavoritesPage(),
          ),
        ),
      );

      // Capture a golden image
      await expectLater(
        find.byType(FavoritesPage),
        matchesGoldenFile('golden_images/favorites_page_empty.png'),
      );
    });

    testWidgets('FavoritesPage with some favorites', (WidgetTester tester) async {
      // Create a Favorites model with some items
      await tester.pumpWidget(
        ChangeNotifierProvider<Favorites>(
          create: (_) {
            final favorites = Favorites();
            favorites.add(1);
            favorites.add(2);
            favorites.add(3);
            return favorites;
          },
          child: const MaterialApp(
            home: FavoritesPage(),
          ),
        ),
      );

      // Capture a golden image
      await expectLater(
        find.byType(FavoritesPage),
        matchesGoldenFile('golden_images/favorites_page_with_items.png'),
      );
    });
  });
}
