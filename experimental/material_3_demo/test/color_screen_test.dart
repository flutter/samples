// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: avoid_types_on_closure_parameters
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
    widgetSetup(tester, 1200);
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(const App());

    Finder colorPageIndicator = find.descendant(
        of: find.byType(NavigationRail),
        matching: find.byIcon(Icons.format_paint_outlined));
    expect(colorPageIndicator, findsOneWidget);
    await tester.tap(colorPageIndicator);
    await tester.pumpAndSettle();
    expect(find.text('Light ColorScheme'), findsOneWidget);
    expect(find.text('Dark ColorScheme'), findsOneWidget);
    expect(find.byType(ColorGroup, skipOffstage: false), findsNWidgets(16));
  });

  testWidgets('Color screen shows correct content', (tester) async {
    widgetSetup(tester, 1200);
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(const App());

    Finder colorPageIndicator = find.descendant(
        of: find.byType(NavigationRail),
        matching: find.byIcon(Icons.format_paint_outlined));
    expect(colorPageIndicator, findsOneWidget);
    await tester.tap(colorPageIndicator);
    await tester.pumpAndSettle();
    expect(find.text('Light ColorScheme'), findsOneWidget);
    expect(find.text('Dark ColorScheme'), findsOneWidget);
    expect(find.byType(ColorGroup, skipOffstage: false), findsNWidgets(16));
  });

  testWidgets('ColorScheme are editable', (tester) async {
    widgetSetup(tester, 1200);
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(const App());

    await updatePrimaryChipColor(tester, const Color(0xFF73A450), true);
    expect(find.text('73a450'), findsOneWidget);

    // Test if the chip color is changed to 73a450.
    Finder primaryChip = find.descendant(
        of: find.widgetWithText(ColorChip, 'primary').first,
        matching: find.byType(Container));
    Container container = tester.widget<Container>(primaryChip);
    expect(container.color, const Color(0xFF73A450));
  });

  testWidgets(
      'Light ColorScheme is configurable; changes can be applied to the widget page',
      (tester) async {
    widgetSetup(tester, 1200);
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(const App());

    Color textColor(Finder text) {
      return tester.renderObject<RenderParagraph>(text).text.style!.color!;
    }

    await updatePrimaryChipColor(tester, const Color(0xff123456), true);

    // Go to the component screen
    Finder componentPageIndicator = find.descendant(
        of: find.byType(NavigationRail),
        matching: find.byIcon(Icons.widgets_outlined));
    expect(componentPageIndicator, findsOneWidget);
    await tester.tap(componentPageIndicator);
    await tester.pumpAndSettle();

    Finder elevatedButtonText = find.text('Elevated').first;
    expect(textColor(elevatedButtonText), const Color(0xff123456));
    Finder outlinedButtonText = find.text('Outlined').first;
    expect(textColor(outlinedButtonText), const Color(0xff123456));
    Finder textButtonText = find.text('Text').first;
    expect(textColor(textButtonText), const Color(0xff123456));
    final Material material = tester.widget<Material>(find.descendant(
      of: find.byType(FilledButton).first,
      matching: find.byType(Material),
    ));
    expect(material.color, const Color(0xff123456));
  });

  testWidgets(
      'Dark ColorScheme is configurable; changes can be applied to the widget page',
      (tester) async {
    widgetSetup(tester, 1200);
    addTearDown(tester.view.resetPhysicalSize);
    await tester.pumpWidget(const App());

    Color textColor(Finder text) {
      return tester.renderObject<RenderParagraph>(text).text.style!.color!;
    }

    // Switch to dark mode
    await tester.tap(find.byIcon(Icons.dark_mode_outlined));
    await tester.pumpAndSettle();
    await updatePrimaryChipColor(tester, const Color(0xff654321), false);

    // Go to the component screen
    Finder componentPageIndicator = find.descendant(
        of: find.byType(NavigationRail),
        matching: find.byIcon(Icons.widgets_outlined));
    expect(componentPageIndicator, findsOneWidget);
    await tester.tap(componentPageIndicator);
    await tester.pumpAndSettle();

    Finder elevatedButtonText = find.text('Elevated').first;
    expect(textColor(elevatedButtonText), const Color(0xff654321));
    Finder outlinedButtonText = find.text('Outlined').first;
    expect(textColor(outlinedButtonText), const Color(0xff654321));
    Finder textButtonText = find.text('Text').first;
    expect(textColor(textButtonText), const Color(0xff654321));
    final Material material = tester.widget<Material>(find.descendant(
      of: find.byType(FilledButton).first,
      matching: find.byType(Material),
    ));
    expect(material.color, const Color(0xff654321));
  });
}

Future<void> updatePrimaryChipColor(
    WidgetTester tester, Color newColor, bool isLight) async {
  Finder colorPageIndicator = find.descendant(
      of: find.byType(NavigationRail),
      matching: find.byIcon(Icons.format_paint_outlined));
  expect(colorPageIndicator, findsOneWidget);
  await tester.tap(colorPageIndicator);
  await tester.pumpAndSettle();
  expect(
      isLight ? find.text('Light ColorScheme') : find.text('Dark ColorScheme'),
      findsOneWidget);

  Finder primaryColorChip = isLight
      ? find.widgetWithText(EditableColorChip, 'primary').first
      : find.widgetWithText(EditableColorChip, 'primary').last;
  await tester.tap(primaryColorChip);
  await tester.pump();

  expect(find.byType(AlertDialog), findsOneWidget);
  await tester.enterText(
      find.byType(TextField), newColor.value.toRadixString(16));

  // Tap on the barrier.
  await tester.tapAt(const Offset(10.0, 10.0));
  await tester.pumpAndSettle();
  expect(find.byType(AlertDialog), findsNothing);
}
