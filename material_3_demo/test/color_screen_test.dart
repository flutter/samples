// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_3_demo/color_palettes_screen.dart';
import 'package:material_3_demo/main.dart';

import 'main_screen_test.dart';

void main() {
  testWidgets(
      'Color palettes screen shows correctly when color icon is clicked '
      'on NavigationBar', (WidgetTester tester) async {
    widgetSetup(tester, 449);
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    await tester.pumpWidget(const Material3Demo());

    expect(find.text("Light Theme"), findsNothing);
    expect(find.text("Dark Theme"), findsNothing);
    expect(find.byType(NavigationBar), findsOneWidget);
    Finder colorIconOnBar = find.byIcon(Icons.format_paint_outlined);
    expect(colorIconOnBar, findsOneWidget);
    await tester.tap(colorIconOnBar);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    expect(colorIconOnBar, findsNothing);
    expect(find.byIcon(Icons.format_paint), findsOneWidget);
    expect(find.text("Light Theme"), findsOneWidget);
    expect(find.text("Dark Theme"), findsOneWidget);
  });

  testWidgets(
      'Color palettes screen shows correctly when color icon is clicked '
      'on NavigationRail', (WidgetTester tester) async {
    widgetSetup(tester, 450); // NavigationRail shows only when width is >= 450.
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    await tester.pumpWidget(const Material3Demo());
    expect(find.text("Light Theme"), findsNothing);
    expect(find.text("Dark Theme"), findsNothing);
    expect(find.byType(NavigationRail), findsOneWidget);
    Finder colorIconOnRail = find.byIcon(Icons.format_paint_outlined);
    expect(colorIconOnRail, findsOneWidget);
    await tester.tap(colorIconOnRail);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    expect(colorIconOnRail, findsNothing);
    expect(find.byIcon(Icons.format_paint), findsOneWidget);
    expect(find.text("Light Theme"), findsOneWidget);
    expect(find.text("Dark Theme"), findsOneWidget);
  });

  testWidgets('Color screen shows correct content',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(body: Row(children: const [ColorPalettesScreen()])),
    ));
    expect(find.text("Light Theme"), findsOneWidget);
    expect(find.text("Dark Theme"), findsOneWidget);
    expect(find.byType(ColorGroup, skipOffstage: false), findsNWidgets(14));
  });
}
