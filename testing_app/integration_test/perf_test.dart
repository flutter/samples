// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing_app/main.dart';

void main() {
  group('Testing App Performance Tests', () {
    final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
        as IntegrationTestWidgetsFlutterBinding;

    // The fullyLive frame policy simulates
    // the way Flutter responds to animations.
    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

    testWidgets('Scrolling test', (tester) async {
      await tester.pumpWidget(TestingApp());

      // Create variables for finders that are used multiple times.
      final listFinder = find.byType(ListView);
      final scroller = tester.widget<ListView>(listFinder).controller;

      // Record the performance timeline of the following operations.
      await binding.traceAction(
        () async {
          // Record the performance summary as the app scrolls through
          // the list of items.
          await binding.watchPerformance(
            () async {
              // Quickly scroll all the way down.
              await scroller.animateTo(
                7000,
                duration: const Duration(seconds: 1),
                curve: Curves.linear,
              );
              await tester.pumpAndSettle();

              // Quickly scroll back up all the way.
              await scroller.animateTo(
                -7000,
                duration: const Duration(seconds: 1),
                curve: Curves.linear,
              );
              await tester.pumpAndSettle();
            },
            // Send the performance summary to the driver.
            reportKey: 'scrolling_summary',
          );
        },
        // Send the timeline data to the driver.
        // This timeline can be opened in the Chrome browser's tracing tools
        // by navigating to chrome://tracing.
        reportKey: 'scrolling_timeline',
      );
    });

    testWidgets('Favorites operations test', (tester) async {
      await tester.pumpWidget(TestingApp());

      // Record the performance timeline of the following operations.
      await binding.traceAction(
        () async {
          // Record the performance summary as operations are performed
          // on the favorites list.
          await binding.watchPerformance(
            () async {
              // Create a list of icon keys.
              final iconKeys = [
                'icon_0',
                'icon_1',
                'icon_2',
              ];

              // Add first three items to favorites.
              for (var icon in iconKeys) {
                // Tap onto the icon.
                await tester.tap(find.byKey(ValueKey(icon)));
                await tester.pumpAndSettle();

                // Verify if appropriate message appears.
                expect(find.text('Added to favorites.'), findsOneWidget);
              }

              // Tap onto the favorites button on the AppBar.
              // The Favorites List should appear.
              await tester.tap(find.text('Favorites'));
              await tester.pumpAndSettle();

              final removeIconKeys = [
                'remove_icon_0',
                'remove_icon_1',
                'remove_icon_2',
              ];

              // Remove all the items from favorites.
              for (final iconKey in removeIconKeys) {
                // Tap onto the remove icon.
                await tester.tap(find.byKey(ValueKey(iconKey)));
                await tester.pumpAndSettle();

                // Verify if appropriate message appears.
                expect(find.text('Removed from favorites.'), findsOneWidget);
              }
            },
            // Send the performance summary to the driver.
            reportKey: 'favorites_operations_summary',
          );
        },
        // Send the timeline data to the driver.
        // This timeline can be opened in the Chrome browser's tracing tools
        // by navigating to chrome://tracing.
        reportKey: 'favorites_operations_timeline',
      );
    });
  });
}
