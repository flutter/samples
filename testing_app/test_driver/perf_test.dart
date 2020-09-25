// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Testing App Performance Tests', () {
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

    test('Scrolling test', () async {
      // Create Finders that are used multiple times.
      final listFinder = find.byType('ListView');

      // Record a performance profile as the app scrolls through
      // the list of items.
      final scrollingTimeline = await driver.traceAction(() async {
        // Quickly scroll all the way down.
        // Use dxScroll to scroll horizontally and dyScroll
        // to scroll vertically.
        await driver.scroll(listFinder, 0, -7000, Duration(seconds: 1));

        // Quickly scroll back up all the way.
        await driver.scroll(listFinder, 0, 7000, Duration(seconds: 1));
      });

      // Convert the Timeline into a TimelineSummary that's easier to
      // read and understand.
      final scrollingSummary = TimelineSummary.summarize(scrollingTimeline);

      // Then, save the summary to disk.
      // Results will be stored in
      // the file 'build/scrolling.timeline_summary.json'.
      await scrollingSummary.writeSummaryToFile('scrolling', pretty: true);

      // Write the entire timeline to disk in a json format.
      // Results will be stored in the file 'build/scrolling.timeline.json'.
      // This file can be opened in the Chrome browser's tracing tools
      // found by navigating to chrome://tracing.
      await scrollingSummary.writeTimelineToFile('scrolling', pretty: true);
    });

    test('Favorites operations test', () async {
      // Record a performance profile as operations are performed
      // on the favorites list.
      final operationsTimeline = await driver.traceAction(() async {
        // Create a list of icon keys.
        final iconKeys = [
          'icon_0',
          'icon_1',
          'icon_2',
        ];

        // Add first three items to favorites.
        for (var icon in iconKeys) {
          // Tap onto the icon.
          await driver.tap(find.byValueKey(icon));

          // Verify if appropriate message appears.
          await driver.waitFor(find.text('Added to favorites.'));
        }

        // Tap onto the favorites button on the AppBar.
        // The Favorites List should appear.
        await driver.tap(find.text('Favorites'));

        final removeIconKeys = [
          'remove_icon_0',
          'remove_icon_1',
          'remove_icon_2',
        ];

        // Remove all the items from favorites.
        for (final iconKey in removeIconKeys) {
          // Tap onto the remove icon.
          await driver.tap(find.byValueKey(iconKey));

          // Verify if appropriate message appears.
          await driver.waitFor(find.text('Removed from favorites.'));
        }
      });

      // Convert the Timeline into a TimelineSummary.
      final operationsSummary = TimelineSummary.summarize(operationsTimeline);

      // Then, save the summary to disk.
      // Results will be stored in
      // the file 'build/favorites_operations.timeline_summary.json'.
      await operationsSummary.writeSummaryToFile('favorites_operations',
          pretty: true);

      // Write the entire timeline to disk in a json format.
      // Results will be stored in
      // the file 'build/favorites_operations.timeline.json'.
      // This file can be opened in the Chrome browser's tracing tools
      // found by navigating to chrome://tracing.
      await operationsSummary.writeTimelineToFile('favorites_operations',
          pretty: true);
    });
  });
}
