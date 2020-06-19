// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Testing App Driver Tests', () {
    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

    test('Finding an item in the list', () async {
      // Create Finders that are used multiple times.
      final listFinder = find.byType('ListView');
      final itemFinder = find.byValueKey('text_25');

      // Scroll until the item to be found appears.
      // Use dxScroll to scroll horizontally and dyScroll
      // to scroll vertically.
      await driver.scrollUntilVisible(
        listFinder,
        itemFinder,
        dyScroll: -500.0,
      );

      // Check if the item contains the correct text.
      expect(await driver.getText(itemFinder), 'Item 25');
    });

    test('Testing IconButtons', () async {
      // Create a finder for the icon.
      final iconFinder = find.byValueKey('icon_25');

      // Tap onto the icon.
      await driver.tap(iconFinder);

      // Verify if appropriate message appears.
      await driver.waitFor(find.text('Added to favorites.'));

      // Wait for the first message to disappear.
      await Future<void>.delayed(Duration(seconds: 1));

      // Tap the icon again.
      await driver.tap(iconFinder);

      // Verify if appropriate message appears.
      await driver.waitFor(find.text('Removed from favorites.'));
    });

    test('Verifying whether item gets added to favorites', () async {
      // Tap onto the icon.
      await driver.tap(find.byValueKey('icon_30'));

      // Tap onto the favorites button on the AppBar.
      // The Favorites List should appear.
      await driver.tap(find.text('Favorites'));

      // Check if the added item has appeared in the list.
      expect(await driver.getText(find.byValueKey('favorites_text_30')),
          equals('Item 30'));
    });

    test('Verifying remove button', () async {
      // Tap onto the remove icon.
      await driver.tap(find.byValueKey('remove_icon_30'));

      // Verify if it disappears.
      await driver.waitForAbsent(find.text('Item 30'));

      // Verify if appropriate message appears.
      await driver.waitFor(find.text('Removed from favorites.'));
    });
  });
}
