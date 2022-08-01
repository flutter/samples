// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: avoid_types_on_closure_parameters
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_3_demo/component_screen.dart';
import 'package:material_3_demo/main.dart';

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
    // Buttons
    expect(find.widgetWithText(ElevatedButton, "Elevated"), findsNWidgets(2));
    expect(find.widgetWithText(ElevatedButton, "Filled"), findsNWidgets(2));
    expect(
        find.widgetWithText(ElevatedButton, "Filled Tonal"), findsNWidgets(2));
    expect(find.widgetWithText(OutlinedButton, "Outlined"), findsNWidgets(2));
    expect(find.widgetWithText(TextButton, "Text"), findsNWidgets(2));
    expect(find.text("Icon"), findsNWidgets(5));

    // FABs
    Finder floatingActionButton = find.text("Create");
    await tester.scrollUntilVisible(
      floatingActionButton,
      500.0,
    );
    expect(
        find.widgetWithIcon(FloatingActionButton, Icons.add), findsNWidgets(4));
    expect(find.widgetWithText(FloatingActionButton, "Create"), findsOneWidget);

    // Cards
    expect(find.widgetWithText(Card, "Elevated"), findsOneWidget);
    expect(find.widgetWithText(Card, "Filled"), findsOneWidget);
    expect(find.widgetWithText(Card, "Outlined"), findsOneWidget);

    // Alert Dialog
    Finder dialogExample = find.widgetWithText(TextButton, "Open Dialog");
    await tester.scrollUntilVisible(
      dialogExample,
      500.0,
    );
    expect(dialogExample, findsOneWidget);
  });

  testWidgets(
      'NavigationRail doesn\'t show when width value is small than 450 '
      '(in Portrait mode or narrow screen)', (tester) async {
    widgetSetup(tester, 449);
    await tester.pumpWidget(const Material3Demo());

    // When screen width is less than 450, NavigationBar will show. At the same
    // time, the NavigationRail and the NavigationBar example will NOT show.
    expect(find.byType(NavigationBars), findsOneWidget);
    expect(find.widgetWithText(NavigationBar, "Components"), findsOneWidget);
    expect(find.widgetWithText(NavigationBar, "Color"), findsOneWidget);
    expect(find.widgetWithText(NavigationBar, "Typography"), findsOneWidget);
    expect(find.widgetWithText(NavigationBar, "Elevation"), findsOneWidget);

    expect(find.byType(NavigationRailSection), findsNothing);
    expect(find.widgetWithText(NavigationBar, "Explore"), findsNothing);
    expect(find.widgetWithText(NavigationBar, "Pets"), findsNothing);
    expect(find.widgetWithText(NavigationBar, "Account"), findsNothing);
  });

  testWidgets(
      'NavigationRail shows when width value is greater than or equal '
      'to 450 (in Landscape mode or wider screen)', (tester) async {
    widgetSetup(tester, 450);
    await tester.pumpWidget(const Material3Demo());

    // When screen width is greater than or equal to 450, NavigationRail and
    // NavigationBar example will show. At the same time, the NavigationBar
    // will NOT show.
    expect(find.byType(NavigationRailSection), findsOneWidget);
    expect(find.byType(Tooltip, skipOffstage: false), findsWidgets);
    expect(find.widgetWithText(NavigationRailSection, "Components"),
        findsOneWidget);
    expect(find.widgetWithText(NavigationRailSection, "Color"), findsOneWidget);
    expect(find.widgetWithText(NavigationRailSection, "Typography"),
        findsOneWidget);
    expect(find.widgetWithText(NavigationRailSection, "Elevation"),
        findsOneWidget);

    final navbarExample = find.byType(NavigationBars);
    await tester.scrollUntilVisible(
      navbarExample,
      500.0,
    );
    expect(find.byType(NavigationBars), findsOneWidget);
    expect(find.widgetWithText(NavigationBar, "Explore"), findsOneWidget);
    expect(find.widgetWithText(NavigationBar, "Pets"), findsOneWidget);
    expect(find.widgetWithText(NavigationBar, "Account"), findsOneWidget);

    expect(find.widgetWithText(NavigationBar, "Components"), findsNothing);
    expect(find.widgetWithText(NavigationBar, "Colors"), findsNothing);
    expect(find.widgetWithText(NavigationBar, "Typography"), findsNothing);
    expect(find.widgetWithText(NavigationBar, "Elevation"), findsNothing);
  });

  testWidgets(
      'Material version switches between Material3 and Material2 when'
      'the version icon is clicked', (tester) async {
    await tester.pumpWidget(const Material3Demo());
    Finder m3Icon = find.widgetWithIcon(IconButton, Icons.filter_3);
    Finder m2Icon = find.widgetWithIcon(IconButton, Icons.filter_2);
    BuildContext defaultElevatedButton =
        tester.firstElement(find.byType(ElevatedButton));
    BuildContext defaultFAB =
        tester.firstElement(find.byType(FloatingActionButton));
    BuildContext defaultCard = tester.firstElement(find.byType(Card));
    Finder dialog = find.text("Open Dialog");
    await tester.scrollUntilVisible(
      dialog,
      500.0,
    );
    await tester.tap(dialog);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    BuildContext defaultAlertDialog = tester.element(find.byType(AlertDialog));
    expect(Theme.of(defaultAlertDialog).useMaterial3, true);
    Finder dismiss = find.text("Dismiss");
    await tester.scrollUntilVisible(
      dismiss,
      500.0,
    );
    await tester.tap(dismiss);
    await tester.pumpAndSettle(const Duration(microseconds: 500));

    expect(m3Icon, findsOneWidget);
    expect(m2Icon, findsNothing);
    expect(find.text("Material 3"), findsOneWidget);
    expect(Theme.of(defaultElevatedButton).useMaterial3, true);
    expect(Theme.of(defaultFAB).useMaterial3, true);
    expect(Theme.of(defaultCard).useMaterial3, true);

    await tester.tap(m3Icon);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    BuildContext updatedElevatedButton =
        tester.firstElement(find.byType(ElevatedButton));
    BuildContext updatedFAB =
        tester.firstElement(find.byType(FloatingActionButton));
    BuildContext updatedCard = tester.firstElement(find.byType(Card));
    Finder updatedDialog = find.text("Open Dialog");
    await tester.scrollUntilVisible(
      updatedDialog,
      500.0,
    );
    await tester.tap(updatedDialog);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    BuildContext updatedAlertDialog =
        tester.firstElement(find.byType(AlertDialog));
    expect(Theme.of(updatedAlertDialog).useMaterial3, false);
    Finder updatedDismiss = find.text("Dismiss");
    await tester.scrollUntilVisible(
      updatedDismiss,
      500.0,
    );
    await tester.tap(updatedDismiss);
    await tester.pumpAndSettle(const Duration(microseconds: 500));

    expect(m3Icon, findsNothing);
    expect(m2Icon, findsOneWidget);
    expect(find.text("Material 2"), findsOneWidget);
    expect(Theme.of(updatedElevatedButton).useMaterial3, false);
    expect(Theme.of(updatedFAB).useMaterial3, false);
    expect(Theme.of(updatedCard).useMaterial3, false);
  });

  testWidgets(
      'Other screens become Material2 mode after changing mode from '
      'main screen', (tester) async {
    await tester.pumpWidget(const Material3Demo());
    await tester.tap(find.widgetWithIcon(IconButton, Icons.filter_3));
    await tester.tap(find.byIcon(Icons.format_paint_outlined));
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    BuildContext lightThemeText = tester.element(find.text("Light Theme"));
    expect(Theme.of(lightThemeText).useMaterial3, false);
    await tester.tap(find.byIcon(Icons.text_snippet_outlined));
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    BuildContext displayLargeText = tester.element(find.text("Display Large"));
    expect(Theme.of(displayLargeText).useMaterial3, false);
    await tester.tap(find.byIcon(Icons.invert_colors_on_outlined));
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    BuildContext material = tester.firstElement(find.byType(Material));
    expect(Theme.of(material).useMaterial3, false);
  });

  testWidgets(
      'Brightness mode switches between dark and light when'
      'the brightness icon is clicked', (tester) async {
    await tester.pumpWidget(const Material3Demo());
    Finder lightIcon = find.widgetWithIcon(IconButton, Icons.wb_sunny_outlined);
    Finder darkIcon = find.widgetWithIcon(IconButton, Icons.wb_sunny);
    BuildContext appBar = tester.element(find.byType(AppBar));
    BuildContext body = tester.element(find.byType(Scaffold));
    BuildContext navigationRail = tester.element(find.byType(NavigationRail));
    expect(lightIcon, findsOneWidget);
    expect(darkIcon, findsNothing);
    expect(Theme.of(appBar).brightness, Brightness.light);
    expect(Theme.of(body).brightness, Brightness.light);
    expect(Theme.of(navigationRail).brightness, Brightness.light);
    await tester.tap(lightIcon);
    await tester.pumpAndSettle(const Duration(microseconds: 500));

    BuildContext appBar2 = tester.element(find.byType(AppBar));
    BuildContext body2 = tester.element(find.byType(Scaffold));
    BuildContext navigationRail2 = tester.element(find.byType(NavigationRail));
    expect(lightIcon, findsNothing);
    expect(darkIcon, findsOneWidget);
    expect(Theme.of(appBar2).brightness, Brightness.dark);
    expect(Theme.of(body2).brightness, Brightness.dark);
    expect(Theme.of(navigationRail2).brightness, Brightness.dark);
  });

  testWidgets('Color theme changes when a color is selected from menu',
      (tester) async {
    await tester.pumpWidget(const Material3Demo());
    Finder menuIcon = find.widgetWithIcon(IconButton, Icons.more_vert);
    BuildContext appBar = tester.element(find.byType(AppBar));
    BuildContext body = tester.element(find.byType(Scaffold));
    BuildContext navigationRail = tester.element(find.byType(NavigationRail));

    expect(Theme.of(appBar).primaryColor, m3BaseColor);
    expect(Theme.of(body).primaryColor, m3BaseColor);
    expect(Theme.of(navigationRail).primaryColor, m3BaseColor);
    await tester.tap(menuIcon);
    await tester.pumpAndSettle();
    await tester.tap(find.text("Blue"));
    await tester.pumpAndSettle();

    BuildContext appBar2 = tester.element(find.byType(AppBar));
    BuildContext body2 = tester.element(find.byType(Scaffold));
    BuildContext navigationRail2 = tester.element(find.byType(NavigationRail));
    ThemeData expectedTheme = ThemeData(colorSchemeSeed: Colors.blue);
    expect(Theme.of(appBar2).primaryColor, expectedTheme.primaryColor);
    expect(Theme.of(body2).primaryColor, expectedTheme.primaryColor);
    expect(Theme.of(navigationRail2).primaryColor, expectedTheme.primaryColor);
  });
}

void widgetSetup(WidgetTester tester, double width) {
  const height = 846;
  tester.binding.window.devicePixelRatioTestValue = (2);
  final dpi = tester.binding.window.devicePixelRatio;
  tester.binding.window.physicalSizeTestValue = Size(width * dpi, height * dpi);
}
