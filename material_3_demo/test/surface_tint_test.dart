// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_3_demo/main.dart';
import 'package:material_3_demo/surface_tones_screen.dart';

import 'main_screen_test.dart';

void main() {
  testWidgets(
      'Surface Tones screen shows correctly when the corresponding icon is '
      'selected on NavigationBar', (WidgetTester tester) async {
    widgetSetup(tester, 449);
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    await tester.pumpWidget(const Material3Demo());

    expect(find.text("Surface Tint only"), findsNothing);
    expect(find.byType(NavigationBar), findsOneWidget);
    Finder tintIconOnBar = find.byIcon(Icons.invert_colors_on_outlined);
    expect(tintIconOnBar, findsOneWidget);
    await tester.tap(tintIconOnBar);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    expect(tintIconOnBar, findsNothing);
    expect(find.byIcon(Icons.opacity), findsOneWidget);
    expect(find.text("Surface Tint only"), findsOneWidget);
  });

  testWidgets(
      'Surface Tones screen shows correctly when the corresponding icon is '
      'selected on NavigationRail', (WidgetTester tester) async {
    widgetSetup(tester, 450); // NavigationRail shows only when width is >= 450.
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    await tester.pumpWidget(const Material3Demo());
    expect(find.text("Surface Tint only"), findsNothing);
    expect(find.byType(NavigationRail), findsOneWidget);
    Finder tintIconOnRail = find.byIcon(Icons.invert_colors_on_outlined);
    expect(tintIconOnRail, findsOneWidget);
    await tester.tap(tintIconOnRail);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    expect(tintIconOnRail, findsNothing);
    expect(find.byIcon(Icons.opacity), findsOneWidget);
    expect(find.text("Surface Tint only"), findsOneWidget);
  });

  testWidgets('Surface Tones screen shows correct content',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(body: Row(children: const [SurfaceTonesScreen()])),
    ));
    expect(find.text("Surface Tint only"), findsOneWidget);
    expect(find.text("Surface Tint and Shadow"), findsOneWidget);
    expect(find.text("Shadow only"), findsOneWidget);
    expect(find.byType(ElevationGrid), findsNWidgets(3));
    expect(find.byType(ElevationCard), findsNWidgets(18));
  });
}
