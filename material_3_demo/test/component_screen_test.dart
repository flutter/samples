// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: avoid_types_on_closure_parameters
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_3_demo/main.dart';
import 'package:material_3_demo/src/component_screen.dart';

void main() {
  testWidgets('Default main page shows all M3 components', (tester) async {
    widgetSetup(tester, 800, windowHeight: 7500);
    await tester.pumpWidget(const App());

    // Elements on the app bar
    expect(find.text('Material 3'), findsOneWidget);
    expect(
      find.widgetWithIcon(AppBar, Icons.dark_mode_outlined),
      findsOneWidget,
    );
    expect(find.widgetWithIcon(AppBar, Icons.filter_2), findsOneWidget);
    expect(find.widgetWithIcon(AppBar, Icons.palette_outlined), findsOneWidget);

    // Elements on the component screen
    // Common buttons
    expect(find.widgetWithText(ElevatedButton, 'Elevated'), findsNWidgets(2));
    expect(find.widgetWithText(FilledButton, 'Filled'), findsNWidgets(2));
    expect(find.widgetWithText(FilledButton, 'Filled tonal'), findsNWidgets(2));
    expect(find.widgetWithText(OutlinedButton, 'Outlined'), findsNWidgets(2));
    expect(find.widgetWithText(TextButton, 'Text'), findsNWidgets(2));
    expect(find.widgetWithText(Buttons, 'Icon'), findsNWidgets(5));

    // FABs
    expect(
      find.byType(FloatingActionButton),
      findsNWidgets(6),
    ); // 2 more show up in the bottom app bar. 1 more in the navigation rail
    expect(find.widgetWithText(FloatingActionButton, 'Create'), findsOneWidget);

    // Icon buttons
    expect(
      find.widgetWithIcon(IconButton, Icons.settings_outlined),
      findsNWidgets(8),
    );

    // Segmented buttons
    expect(find.byType(SegmentedButton<Calendar>), findsOneWidget);
    expect(find.byType(SegmentedButton<Sizes>), findsOneWidget);

    // Badges
    expect(find.byType(Badge), findsNWidgets(4));

    // Progress indicators
    Finder circularProgressIndicator = find.byType(CircularProgressIndicator);
    expect(circularProgressIndicator, findsOneWidget);
    Finder linearProgressIndicator = find.byType(LinearProgressIndicator);
    expect(linearProgressIndicator, findsOneWidget);

    // Snackbar
    expect(find.widgetWithText(TextButton, 'Show snackbar'), findsOneWidget);

    // Bottom sheet
    expect(
      find.widgetWithText(TextButton, 'Show modal bottom sheet'),
      findsOneWidget,
    );
    expect(
      find.widgetWithText(TextButton, 'Show bottom sheet'),
      findsOneWidget,
    );

    // Cards
    expect(find.widgetWithText(Cards, 'Elevated'), findsOneWidget);
    expect(find.widgetWithText(Cards, 'Filled'), findsOneWidget);
    expect(find.widgetWithText(Cards, 'Outlined'), findsOneWidget);

    // Carousels
    expect(find.byType(CarouselView), findsNWidgets(2));

    // Dialogs
    expect(find.widgetWithText(TextButton, 'Show dialog'), findsOneWidget);
    expect(
      find.widgetWithText(TextButton, 'Show full-screen dialog'),
      findsOneWidget,
    );

    // Dividers
    expect(find.byKey(const Key('divider')), findsOneWidget);

    // Bottom app bar
    expect(find.byType(BottomAppBar), findsOneWidget);

    // Navigation bar
    // Third one is off screen in the scaffold
    expect(find.byType(NavigationBar), findsNWidgets(3));

    // Navigation drawer
    expect(find.byType(Drawer), findsOneWidget);
    expect(
      find.widgetWithText(TextButton, 'Show modal navigation drawer'),
      findsOneWidget,
    );

    // Navigation rail
    // Second one is off screen in the scaffold
    expect(find.byType(NavigationRail), findsNWidgets(2));

    // Tabs
    expect(find.byType(TabBar), findsOneWidget);

    // Search
    expect(find.byType(SearchBar), findsOneWidget);

    // Top app bars
    expect(find.byType(AppBar), findsNWidgets(6));

    // Checkboxes
    Finder checkboxExample = find.byType(CheckboxListTile);
    expect(checkboxExample, findsNWidgets(4));

    // Chips
    expect(
      find.byType(ActionChip),
      findsNWidgets(4),
    ); // includes Assist and Suggestion chip.
    expect(find.byType(FilterChip), findsNWidgets(2));
    expect(find.byType(InputChip), findsNWidgets(2));

    // Date and time pickers
    expect(find.widgetWithText(DatePicker, 'Show date picker'), findsOneWidget);
    expect(find.widgetWithText(TimePicker, 'Show time picker'), findsOneWidget);

    // Menus
    expect(find.byType(MenuAnchor), findsNWidgets(5));
    expect(find.byType(DropdownMenu<ColorLabel>), findsOneWidget);
    expect(find.byType(DropdownMenu<IconLabel>), findsOneWidget);

    // Radios
    Finder radioExample = find.byType(RadioListTile<Options>);
    expect(radioExample, findsNWidgets(3));

    // Sliders
    expect(find.byType(Slider), findsNWidgets(2));

    // Switches
    expect(find.byType(Switch), findsNWidgets(4));

    // TextFields
    expect(find.widgetWithText(TextField, 'Disabled'), findsNWidgets(2));
    expect(find.widgetWithText(TextField, 'Filled'), findsNWidgets(2));
    expect(find.widgetWithText(TextField, 'Outlined'), findsNWidgets(2));
  });

  testWidgets('NavigationRail doesn\'t show when width value is small than 1000 '
      '(in Portrait mode or narrow screen)', (tester) async {
    widgetSetup(tester, 999, windowHeight: 7000);
    await tester.pumpWidget(const App());
    await tester.pumpAndSettle();

    // When screen width is less than 1000, NavigationBar will show. At the same
    // time, the NavigationBar example still show up in the navigation group.
    expect(
      find.byType(NavigationBars),
      findsNWidgets(3),
    ); // The real navBar, badges example and navBar example
    expect(find.widgetWithText(NavigationBar, 'Components'), findsOneWidget);
    expect(find.widgetWithText(NavigationBar, 'Color'), findsOneWidget);
    expect(find.widgetWithText(NavigationBar, 'Typography'), findsOneWidget);
    expect(find.widgetWithText(NavigationBar, 'Elevation'), findsOneWidget);

    expect(find.widgetWithText(NavigationBar, 'Explore'), findsOneWidget);
    expect(find.widgetWithText(NavigationBar, 'Pets'), findsOneWidget);
    expect(find.widgetWithText(NavigationBar, 'Account'), findsOneWidget);
  });

  testWidgets('NavigationRail shows when width value is greater than or equal '
      'to 1000 (in Landscape mode or wider screen)', (tester) async {
    widgetSetup(tester, 1001, windowHeight: 3000);
    await tester.pumpWidget(const App());
    await tester.pumpAndSettle();

    // When screen width is greater than or equal to 1000, NavigationRail will show.
    // At the same time, the NavigationBar will NOT show.
    expect(find.byType(NavigationRail), findsNWidgets(2));
    expect(find.byType(Tooltip, skipOffstage: false), findsWidgets);
    expect(find.widgetWithText(NavigationRail, 'Components'), findsOneWidget);
    expect(find.widgetWithText(NavigationRail, 'Color'), findsOneWidget);
    expect(find.widgetWithText(NavigationRail, 'Typography'), findsOneWidget);
    expect(find.widgetWithText(NavigationRail, 'Elevation'), findsOneWidget);

    expect(find.widgetWithText(NavigationBar, 'Explore'), findsOneWidget);
    expect(find.widgetWithText(NavigationBar, 'Pets'), findsOneWidget);
    expect(find.widgetWithText(NavigationBar, 'Account'), findsOneWidget);

    // the Navigation bar should be out of screen.
    final RenderBox box = tester.renderObject(
      find.widgetWithText(NavigationBar, 'Components'),
    );
    expect(box.localToGlobal(Offset.zero), const Offset(0.0, 3080.0));
  });

  testWidgets('Material version switches between Material3 and Material2 when '
      'the version icon is clicked', (tester) async {
    widgetSetup(tester, 450, windowHeight: 7000);
    await tester.pumpWidget(const App());
    BuildContext defaultElevatedButton = tester.firstElement(
      find.byType(ElevatedButton),
    );
    BuildContext defaultIconButton = tester.firstElement(
      find.byType(IconButton),
    );
    BuildContext defaultFAB = tester.firstElement(
      find.byType(FloatingActionButton),
    );
    BuildContext defaultCard = tester.firstElement(
      find.widgetWithText(Card, 'Elevated'),
    );
    BuildContext defaultChip = tester.firstElement(
      find.widgetWithText(ActionChip, 'Assist'),
    );
    Finder dialog = find.text('Show dialog');
    await tester.tap(dialog);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    BuildContext defaultAlertDialog = tester.element(find.byType(AlertDialog));
    expect(Theme.of(defaultAlertDialog).useMaterial3, true);
    Finder dismiss = find.text('Okay');
    await tester.tap(dismiss);
    await tester.pumpAndSettle(const Duration(microseconds: 500));

    expect(find.widgetWithIcon(AppBar, Icons.filter_2), findsOneWidget);
    expect(find.widgetWithIcon(AppBar, Icons.filter_3), findsNothing);
    expect(find.text('Material 3'), findsOneWidget);
    expect(Theme.of(defaultElevatedButton).useMaterial3, true);
    expect(Theme.of(defaultIconButton).useMaterial3, true);
    expect(Theme.of(defaultFAB).useMaterial3, true);
    expect(Theme.of(defaultCard).useMaterial3, true);
    expect(Theme.of(defaultChip).useMaterial3, true);

    Finder appbarM3Icon = find.descendant(
      of: find.byType(AppBar),
      matching: find.widgetWithIcon(IconButton, Icons.filter_2),
    );
    await tester.tap(appbarM3Icon);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    BuildContext updatedElevatedButton = tester.firstElement(
      find.byType(ElevatedButton),
    );
    BuildContext updatedIconButton = tester.firstElement(
      find.byType(IconButton),
    );
    BuildContext updatedFAB = tester.firstElement(
      find.byType(FloatingActionButton),
    );
    BuildContext updatedCard = tester.firstElement(find.byType(Card));
    BuildContext updatedChip = tester.firstElement(
      find.widgetWithText(ActionChip, 'Assist'),
    );
    Finder updatedDialog = find.text('Show dialog');
    await tester.tap(updatedDialog);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    BuildContext updatedAlertDialog = tester.firstElement(
      find.byType(AlertDialog),
    );
    expect(Theme.of(updatedAlertDialog).useMaterial3, false);
    Finder updatedDismiss = find.text('Dismiss');
    await tester.tap(updatedDismiss);
    await tester.pumpAndSettle(const Duration(microseconds: 500));

    expect(find.widgetWithIcon(AppBar, Icons.filter_3), findsOneWidget);
    expect(find.widgetWithIcon(AppBar, Icons.filter_2), findsNothing);
    expect(find.text('Material 2'), findsOneWidget);
    expect(Theme.of(updatedElevatedButton).useMaterial3, false);
    expect(Theme.of(updatedIconButton).useMaterial3, false);
    expect(Theme.of(updatedFAB).useMaterial3, false);
    expect(Theme.of(updatedCard).useMaterial3, false);
    expect(Theme.of(updatedChip).useMaterial3, false);
  });

  testWidgets('Other screens become Material2 mode after changing mode from '
      'main screen', (tester) async {
    await tester.pumpWidget(const App());
    Finder appbarM2Icon = find.descendant(
      of: find.byType(AppBar),
      matching: find.widgetWithIcon(IconButton, Icons.filter_2),
    );
    await tester.tap(appbarM2Icon);
    Finder secondScreenIcon = find.descendant(
      of: find.byType(NavigationBar),
      matching: find.widgetWithIcon(
        NavigationDestination,
        Icons.format_paint_outlined,
      ),
    );
    await tester.tap(secondScreenIcon);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    BuildContext lightThemeText = tester.element(
      find.text('Light ColorScheme'),
    );
    expect(Theme.of(lightThemeText).useMaterial3, false);
    Finder thirdScreenIcon = find.descendant(
      of: find.byType(NavigationBar),
      matching: find.widgetWithIcon(
        NavigationDestination,
        Icons.text_snippet_outlined,
      ),
    );
    await tester.tap(thirdScreenIcon);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    BuildContext displayLargeText = tester.element(find.text('Display Large'));
    expect(Theme.of(displayLargeText).useMaterial3, false);
    Finder fourthScreenIcon = find.descendant(
      of: find.byType(NavigationBar),
      matching: find.widgetWithIcon(
        NavigationDestination,
        Icons.invert_colors_on_outlined,
      ),
    );
    await tester.tap(fourthScreenIcon);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    BuildContext material = tester.firstElement(find.byType(Material));
    expect(Theme.of(material).useMaterial3, false);
  });

  testWidgets('Brightness mode switches between dark and light when'
      'the brightness icon is clicked', (tester) async {
    await tester.pumpWidget(const App());
    Finder lightIcon = find.descendant(
      of: find.byType(AppBar),
      matching: find.widgetWithIcon(IconButton, Icons.light_mode_outlined),
    );
    Finder darkIcon = find.descendant(
      of: find.byType(AppBar),
      matching: find.widgetWithIcon(IconButton, Icons.dark_mode_outlined),
    );
    BuildContext appBar = tester.element(find.byType(AppBar).first);
    BuildContext body = tester.firstElement(find.byType(Scaffold).first);
    BuildContext navigationRail = tester.element(
      find.widgetWithIcon(NavigationRail, Icons.format_paint_outlined),
    );
    expect(darkIcon, findsOneWidget);
    expect(lightIcon, findsNothing);
    expect(Theme.of(appBar).brightness, Brightness.light);
    expect(Theme.of(body).brightness, Brightness.light);
    expect(Theme.of(navigationRail).brightness, Brightness.light);
    await tester.tap(darkIcon);
    await tester.pumpAndSettle(const Duration(microseconds: 500));

    BuildContext appBar2 = tester.element(find.byType(AppBar).first);
    BuildContext body2 = tester.element(find.byType(Scaffold).first);
    BuildContext navigationRail2 = tester.element(
      find.widgetWithIcon(NavigationRail, Icons.format_paint_outlined),
    );

    expect(darkIcon, findsNothing);
    expect(lightIcon, findsOneWidget);
    expect(Theme.of(appBar2).brightness, Brightness.dark);
    expect(Theme.of(body2).brightness, Brightness.dark);
    expect(Theme.of(navigationRail2).brightness, Brightness.dark);
  });

  testWidgets('Color theme changes when a color is selected from menu', (
    tester,
  ) async {
    Color m3BaseColor = const Color(0xff65558f);
    await tester.pumpWidget(Container());
    await tester.pumpWidget(const App());
    await tester.pump();
    Finder menuIcon = find.descendant(
      of: find.byType(AppBar),
      matching: find.widgetWithIcon(IconButton, Icons.palette_outlined),
    );
    BuildContext appBar = tester.element(
      find.widgetWithIcon(AppBar, Icons.palette_outlined).first,
    );
    BuildContext body = tester.element(find.byType(Scaffold).first);

    expect(Theme.of(appBar).primaryColor, m3BaseColor);
    expect(Theme.of(body).primaryColor, m3BaseColor);
    await tester.tap(menuIcon);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Blue').last);
    await tester.pumpAndSettle();

    BuildContext appBar2 = tester.element(find.byType(AppBar).first);
    BuildContext body2 = tester.element(find.byType(Scaffold).first);
    ThemeData expectedTheme = ThemeData(colorSchemeSeed: Colors.blue);
    expect(Theme.of(appBar2).primaryColor, expectedTheme.primaryColor);
    expect(Theme.of(body2).primaryColor, expectedTheme.primaryColor);
  });
}

void widgetSetup(
  WidgetTester tester,
  double windowWidth, {
  double? windowHeight,
}) {
  final height = windowHeight ?? 846;
  tester.view.devicePixelRatio = 2;
  final dpi = tester.view.devicePixelRatio;
  tester.view.physicalSize = Size(windowWidth * dpi, height * dpi);
}
