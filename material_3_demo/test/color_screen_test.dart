// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: avoid_types_on_closure_parameters
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_3_demo/color_palettes_screen.dart';
import 'package:material_3_demo/main.dart';

import 'component_screen_test.dart';

void main() {
  testWidgets(
      'Color palettes screen shows correctly when color icon is clicked '
      'on NavigationBar', (tester) async {
    widgetSetup(tester, 449);
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(const App());

    expect(find.text('Light ColorScheme'), findsNothing);
    expect(find.text('Dark ColorScheme'), findsNothing);
    expect(find.byType(NavigationBar), findsOneWidget);
    Finder colorIconOnBar = find.descendant(
        of: find.byType(NavigationBar),
        matching: find.widgetWithIcon(
            NavigationDestination, Icons.format_paint_outlined));
    expect(colorIconOnBar, findsOneWidget);
    await tester.tap(colorIconOnBar);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    expect(colorIconOnBar, findsNothing);

    Finder selectedColorIconOnBar = find.descendant(
        of: find.byType(NavigationBar),
        matching:
            find.widgetWithIcon(NavigationDestination, Icons.format_paint));
    expect(selectedColorIconOnBar, findsOneWidget);
    expect(find.text('Light ColorScheme'), findsOneWidget);
    expect(find.text('Dark ColorScheme'), findsOneWidget);
  });

  testWidgets(
      'Color palettes screen shows correctly when color icon is clicked '
      'on NavigationRail', (tester) async {
    widgetSetup(
        tester, 1200); // NavigationRail shows only when width is > 1000.
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(const App());
    await tester.pumpAndSettle();
    expect(find.text('Light ColorScheme'), findsNothing);
    expect(find.text('Dark ColorScheme'), findsNothing);
    Finder colorIconOnRail = find.descendant(
        of: find.byType(NavigationRail),
        matching: find.byIcon(Icons.format_paint_outlined));
    expect(colorIconOnRail, findsOneWidget);
    await tester.tap(colorIconOnRail);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    expect(colorIconOnRail, findsNothing);
    Finder selectedColorIconOnRail = find.descendant(
        of: find.byType(NavigationRail),
        matching: find.byIcon(Icons.format_paint));
    expect(selectedColorIconOnRail, findsOneWidget);
    expect(find.text('Light ColorScheme'), findsOneWidget);
    expect(find.text('Dark ColorScheme'), findsOneWidget);
  });

  testWidgets('Color screen shows correct content', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(body: Row(children: [ColorPalettesScreen()])),
    ));
    expect(find.text('Light ColorScheme'), findsOneWidget);
    expect(find.text('Dark ColorScheme'), findsOneWidget);
    expect(find.byType(ColorGroup, skipOffstage: false), findsNWidgets(14));
  });
}
