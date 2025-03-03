// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: avoid_types_on_closure_parameters
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_3_demo/main.dart';
import 'package:material_3_demo/src/elevation_screen.dart';

import 'component_screen_test.dart';

void main() {
  testWidgets(
    'Surface Tones screen shows correctly when the corresponding icon is '
    'selected on NavigationBar',
    (tester) async {
      widgetSetup(tester, 449);
      addTearDown(tester.view.resetPhysicalSize);
      await tester.pumpWidget(const App());

      expect(find.text('Surface Tint Color Only'), findsNothing);
      expect(find.byType(NavigationBar), findsOneWidget);
      Finder tintIconOnBar = find.descendant(
        of: find.byType(NavigationBar),
        matching: find.widgetWithIcon(
          NavigationDestination,
          Icons.invert_colors_on_outlined,
        ),
      );
      expect(tintIconOnBar, findsOneWidget);
      await tester.tap(tintIconOnBar);
      await tester.pumpAndSettle(const Duration(microseconds: 500));
      expect(tintIconOnBar, findsNothing);
      Finder selectedTintIconOnBar = find.descendant(
        of: find.byType(NavigationBar),
        matching: find.widgetWithIcon(NavigationDestination, Icons.opacity),
      );
      expect(selectedTintIconOnBar, findsOneWidget);
      expect(find.text('Surface Tint Color Only'), findsOneWidget);
    },
  );

  testWidgets(
    'Surface Tones screen shows correctly when the corresponding icon is '
    'selected on NavigationRail',
    (tester) async {
      widgetSetup(
        tester,
        1200,
      ); // NavigationRail shows only when width is > 1000.
      addTearDown(tester.view.resetPhysicalSize);
      await tester.pumpWidget(const App());
      expect(find.text('Surface Tint Color Only'), findsNothing);
      Finder tintIconOnRail = find.descendant(
        of: find.byType(NavigationRail),
        matching: find.byIcon(Icons.invert_colors_on_outlined),
      );
      expect(tintIconOnRail, findsOneWidget);
      await tester.tap(tintIconOnRail);
      await tester.pumpAndSettle(const Duration(microseconds: 500));
      expect(tintIconOnRail, findsNothing);
      Finder selectedTintIconOnRail = find.descendant(
        of: find.byType(NavigationRail),
        matching: find.byIcon(Icons.opacity),
      );
      expect(selectedTintIconOnRail, findsOneWidget);
      expect(find.text('Surface Tint Color Only'), findsOneWidget);
    },
  );

  testWidgets('Surface Tones screen shows correct content', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: Row(children: [ElevationScreen()])),
      ),
    );
    expect(find.text('Surface Tint Color Only'), findsOneWidget);
    expect(find.text('Surface Tint Color and Shadow Color'), findsOneWidget);
    expect(find.text('Shadow Color Only'), findsOneWidget);
    expect(find.byType(ElevationGrid), findsNWidgets(3));
    expect(find.byType(ElevationCard), findsNWidgets(18));
  });
}
