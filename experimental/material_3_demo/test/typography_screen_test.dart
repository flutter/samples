// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_3_demo/main.dart';
import 'package:material_3_demo/typography_screen.dart';

import 'main_screen_test.dart';

void main() {
  testWidgets(
      'Typography screen shows correctly when the corresponding icon is '
      'selected on NavigationBar', (WidgetTester tester) async {
    widgetSetup(tester, 449);
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    await tester.pumpWidget(const Material3Demo());

    expect(find.text("Display Large"), findsNothing);
    expect(find.byType(NavigationBar), findsOneWidget);
    Finder textIconOnBar = find.byIcon(Icons.text_snippet_outlined);
    expect(textIconOnBar, findsOneWidget);
    await tester.tap(textIconOnBar);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    expect(textIconOnBar, findsNothing);
    expect(find.byIcon(Icons.text_snippet), findsOneWidget);
    expect(find.text("Display Large"), findsOneWidget);
  });

  testWidgets(
      'Typography screen shows correctly when the corresponding icon is '
      'selected on NavigationRail', (WidgetTester tester) async {
    widgetSetup(tester, 450); // NavigationRail shows only when width is >= 450.
    addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
    await tester.pumpWidget(const Material3Demo());
    expect(find.text("Display Large"), findsNothing);
    expect(find.byType(NavigationRail), findsOneWidget);
    Finder textIconOnRail = find.byIcon(Icons.text_snippet_outlined);
    expect(textIconOnRail, findsOneWidget);
    await tester.tap(textIconOnRail);
    await tester.pumpAndSettle(const Duration(microseconds: 500));
    expect(textIconOnRail, findsNothing);
    expect(find.byIcon(Icons.text_snippet), findsOneWidget);
    expect(find.text("Display Large"), findsOneWidget);
  });

  testWidgets('Typography screen shows correct content',
      (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(body: Row(children: const [TypographyScreen()])),
    ));
    expect(find.text("Display Large"), findsOneWidget);
    expect(find.text("Display Medium"), findsOneWidget);
    expect(find.text("Display Small"), findsOneWidget);
    expect(find.text("Headline Large"), findsOneWidget);
    expect(find.text("Headline Medium"), findsOneWidget);
    expect(find.text("Headline Small"), findsOneWidget);
    expect(find.text("Title Large"), findsOneWidget);
    expect(find.text("Title Medium"), findsOneWidget);
    expect(find.text("Title Small"), findsOneWidget);
    await tester.scrollUntilVisible(
      find.text("Body Small"),
      500.0,
    );
    expect(find.text("Label Large"), findsOneWidget);
    expect(find.text("Label Medium"), findsOneWidget);
    expect(find.text("Label Small"), findsOneWidget);
    expect(find.text("Body Large"), findsOneWidget);
    expect(find.text("Body Medium"), findsOneWidget);
    expect(find.text("Body Small"), findsOneWidget);

    expect(find.byType(TextStyleExample), findsNWidgets(15));
  });
}
