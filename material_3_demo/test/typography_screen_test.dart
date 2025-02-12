// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: avoid_types_on_closure_parameters
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_3_demo/main.dart';
import 'package:material_3_demo/src/typography_screen.dart';

import 'component_screen_test.dart';

void main() {
  testWidgets(
    'Typography screen shows correctly when the corresponding icon is '
    'selected on NavigationBar',
    (tester) async {
      widgetSetup(tester, 449);
      addTearDown(tester.view.resetPhysicalSize);
      await tester.pumpWidget(const App());

      expect(find.text('Display Large'), findsNothing);
      expect(find.byType(NavigationBar), findsOneWidget);
      Finder textIconOnBar = find.descendant(
        of: find.byType(NavigationBar),
        matching: find.byIcon(Icons.text_snippet_outlined),
      );
      expect(textIconOnBar, findsOneWidget);
      await tester.tap(textIconOnBar);
      await tester.pumpAndSettle(const Duration(microseconds: 500));
      expect(textIconOnBar, findsNothing);
      Finder selectedTextIconOnBar = find.descendant(
        of: find.byType(NavigationBar),
        matching: find.byIcon(Icons.text_snippet),
      );
      expect(selectedTextIconOnBar, findsOneWidget);
      expect(find.text('Display Large'), findsOneWidget);
    },
  );

  testWidgets(
    'Typography screen shows correctly when the corresponding icon is '
    'selected on NavigationRail',
    (tester) async {
      widgetSetup(
        tester,
        1200,
      ); // NavigationRail shows only when width is > 1000.
      addTearDown(tester.view.resetPhysicalSize);
      await tester.pumpWidget(const App());
      expect(find.text('Display Large'), findsNothing);
      Finder textIconOnRail = find.descendant(
        of: find.byType(NavigationRail),
        matching: find.byIcon(Icons.text_snippet_outlined),
      );
      expect(textIconOnRail, findsOneWidget);
      await tester.tap(textIconOnRail);
      await tester.pumpAndSettle(const Duration(microseconds: 500));
      expect(textIconOnRail, findsNothing);
      Finder selectedTextIconOnRail = find.descendant(
        of: find.byType(NavigationRail),
        matching: find.byIcon(Icons.text_snippet),
      );
      expect(selectedTextIconOnRail, findsOneWidget);
      expect(find.text('Display Large'), findsOneWidget);
    },
  );

  testWidgets('Typography screen shows correct content', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: Row(children: [TypographyScreen()])),
      ),
    );
    expect(find.text('Display Large'), findsOneWidget);
    expect(find.text('Display Medium'), findsOneWidget);
    expect(find.text('Display Small'), findsOneWidget);
    expect(find.text('Headline Large'), findsOneWidget);
    expect(find.text('Headline Medium'), findsOneWidget);
    expect(find.text('Headline Small'), findsOneWidget);
    expect(find.text('Title Large'), findsOneWidget);
    expect(find.text('Title Medium'), findsOneWidget);
    expect(find.text('Title Small'), findsOneWidget);
    await tester.scrollUntilVisible(find.text('Body Small'), 500.0);
    expect(find.text('Label Large'), findsOneWidget);
    expect(find.text('Label Medium'), findsOneWidget);
    expect(find.text('Label Small'), findsOneWidget);
    expect(find.text('Body Large'), findsOneWidget);
    expect(find.text('Body Medium'), findsOneWidget);
    expect(find.text('Body Small'), findsOneWidget);

    expect(find.byType(TextStyleExample), findsNWidgets(15));
  });
}
