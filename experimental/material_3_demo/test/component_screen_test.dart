// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: avoid_types_on_closure_parameters
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../lib/component_screen.dart';
import '../lib/main.dart';

void main() {
  testWidgets('Default main page shows all M3 components', (tester) async {
    await tester.pumpWidget(const Material3Demo());

    // Elements on the app bar
    expect(find.text('Material 3'), findsOneWidget);
    expect(find.widgetWithIcon(IconButton, Icons.wb_sunny_outlined),
        findsOneWidget);
    expect(find.widgetWithIcon(IconButton, Icons.filter_3), findsOneWidget);
    expect(find.widgetWithIcon(IconButton, Icons.more_vert), findsOneWidget);

    // Elements on the component screen
    // IconButtons
    expect(find.widgetWithIcon(IconButton, Icons.settings_outlined),
        findsNWidgets(8));

    // Chips
    expect(find.byType(ActionChip),
        findsNWidgets(7)); // includes Assist and Suggestion chip.
    expect(find.byType(FilterChip), findsNWidgets(4));
    expect(find.byType(InputChip), findsNWidgets(4));
  });

  testWidgets(
      'Material version switches between Material3 and Material2 when'
      'the version icon is clicked', (tester) async {
    await tester.pumpWidget(const Material3Demo());
    Finder m3Icon = find.widgetWithIcon(IconButton, Icons.filter_3);
    Finder m2Icon = find.widgetWithIcon(IconButton, Icons.filter_2);
    BuildContext defaultIconButton =
        tester.firstElement(find.byType(IconButton));
    BuildContext defaultChip =
        tester.firstElement(find.widgetWithText(ActionChip, "Assist"));

    expect(m3Icon, findsOneWidget);
    expect(m2Icon, findsNothing);
    expect(find.text("Material 3"), findsOneWidget);
    expect(Theme.of(defaultIconButton).useMaterial3, true);
    expect(Theme.of(defaultChip).useMaterial3, true);

    await tester.tap(m3Icon);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    BuildContext updatedIconButton =
        tester.firstElement(find.byType(IconButton));
    BuildContext updatedChip =
        tester.firstElement(find.widgetWithText(ActionChip, "Assist"));

    expect(m3Icon, findsNothing);
    expect(m2Icon, findsOneWidget);
    expect(find.text("Material 2"), findsOneWidget);
    expect(Theme.of(updatedIconButton).useMaterial3, false);
    expect(Theme.of(updatedChip).useMaterial3, false);
  });

  testWidgets(
      'Brightness mode switches between dark and light when'
      'the brightness icon is clicked', (tester) async {
    await tester.pumpWidget(const Material3Demo());
    Finder lightIcon = find.widgetWithIcon(IconButton, Icons.wb_sunny_outlined);
    Finder darkIcon = find.widgetWithIcon(IconButton, Icons.wb_sunny);
    BuildContext appBar = tester.element(find.byType(AppBar));
    BuildContext body = tester.element(find.byType(Scaffold));
    expect(lightIcon, findsOneWidget);
    expect(darkIcon, findsNothing);
    expect(Theme.of(appBar).brightness, Brightness.light);
    expect(Theme.of(body).brightness, Brightness.light);
    await tester.tap(lightIcon);
    await tester.pumpAndSettle(const Duration(microseconds: 500));

    BuildContext appBar2 = tester.element(find.byType(AppBar));
    BuildContext body2 = tester.element(find.byType(Scaffold));
    expect(lightIcon, findsNothing);
    expect(darkIcon, findsOneWidget);
    expect(Theme.of(appBar2).brightness, Brightness.dark);
    expect(Theme.of(body2).brightness, Brightness.dark);
  });

  testWidgets('Color theme changes when a color is selected from menu',
      (tester) async {
    await tester.pumpWidget(const Material3Demo());
    Finder menuIcon = find.widgetWithIcon(IconButton, Icons.more_vert);
    BuildContext appBar = tester.element(find.byType(AppBar));
    BuildContext body = tester.element(find.byType(Scaffold));

    expect(Theme.of(appBar).primaryColor, m3BaseColor);
    expect(Theme.of(body).primaryColor, m3BaseColor);
    await tester.tap(menuIcon);
    await tester.pumpAndSettle();
    await tester.tap(find.text("Blue"));
    await tester.pumpAndSettle();

    BuildContext appBar2 = tester.element(find.byType(AppBar));
    BuildContext body2 = tester.element(find.byType(Scaffold));
    ThemeData expectedTheme = ThemeData(colorSchemeSeed: Colors.blue);
    expect(Theme.of(appBar2).primaryColor, expectedTheme.primaryColor);
    expect(Theme.of(body2).primaryColor, expectedTheme.primaryColor);
  });
}
