// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:veggieseasons/data/app_state.dart';
import 'package:veggieseasons/data/veggie.dart';
import 'package:veggieseasons/main.dart';

void main() {
  testWidgets('restoration smoke test', (tester) async {
    SharedPreferences.setMockInitialValues(<String, Object>{});
    AppState.debugCurrentSeason = Season.autumn;

    await tester.pumpWidget(
      const RootRestorationScope(
        restorationId: 'root',
        child: VeggieApp(),
      ),
    );

    expect(find.text('In season today'), findsOneWidget);
    expect(find.text('Grapes'), findsNothing);
    expect(find.text('Figs'), findsNothing);
    await tester.scrollUntilVisible(find.text('Grapes'), 100);
    expect(find.text('In season today'), findsNothing);
    expect(find.text('Figs'), findsOneWidget);
    expect(find.text('Grapes'), findsOneWidget);

    // Scroll offset of "Home" is restored.
    await tester.restartAndRestore();
    expect(find.text('In season today'), findsNothing);
    expect(find.text('Figs'), findsOneWidget);
    expect(find.text('Grapes'), findsOneWidget);

    // Open details page for "Figs".
    await tester.tap(find.text('Figs'));
    await tester.pumpAndSettle();

    expect(find.text('Grapes'), findsNothing);
    expect(find.text('Figs'), findsOneWidget);
    expect(find.text('Serving info'), findsOneWidget);
    expect(tester.widget<CupertinoSwitch>(find.byType(CupertinoSwitch)).value,
        isFalse);
    await tester.tap(find.byType(CupertinoSwitch));
    await tester.pumpAndSettle();
    expect(tester.widget<CupertinoSwitch>(find.byType(CupertinoSwitch)).value,
        isTrue);

    // Current details page is restored.
    await tester.restartAndRestore();
    expect(find.text('Grapes'), findsNothing);
    expect(find.text('Figs'), findsOneWidget);
    expect(find.text('Serving info'), findsOneWidget);
    expect(tester.widget<CupertinoSwitch>(find.byType(CupertinoSwitch)).value,
        isTrue);

    await tester.tap(find.text('Trivia'));
    await tester.pumpAndSettle();
    expect(find.text('Serving info'), findsNothing);
    expect(
        find.text("Which of these isn't a variety of figs?"), findsOneWidget);

    // Restores to trivia page.
    await tester.restartAndRestore();
    expect(find.text('Serving info'), findsNothing);
    expect(
        find.text("Which of these isn't a variety of figs?"), findsOneWidget);

    await tester.tap(find.text('Brown Turkey'));
    await tester.pumpAndSettle();
    expect(find.text("Which of these isn't a variety of figs?"), findsNothing);
    expect(find.text('Next Question'), findsOneWidget);

    // Restores trivia state.
    await tester.restartAndRestore();
    expect(find.text("Which of these isn't a variety of figs?"), findsNothing);
    expect(find.text('Next Question'), findsOneWidget);

    // Close details page.
    tester.state<NavigatorState>(find.byType(Navigator).last).pop();
    await tester.pumpAndSettle();
    expect(find.text('Trivia'), findsNothing);

    // Old scroll offset is still preserved.
    expect(find.text('Grapes'), findsOneWidget);
    expect(find.text('Figs'), findsOneWidget);

    await tester.restartAndRestore();
    expect(find.text('Grapes'), findsOneWidget);
    expect(find.text('Figs'), findsOneWidget);

    // Go to the garden.
    await tester.tap(find.text('My Garden'));
    await tester.pumpAndSettle();

    expect(find.text('My Garden'),
        findsNWidgets(2)); // Name of the tap & title of page.
    expect(find.text('Grapes'), findsNothing);
    expect(find.text('Figs'), findsOneWidget);

    // Restores the current selected tab.
    await tester.restartAndRestore();
    expect(find.text('My Garden'),
        findsNWidgets(2)); // Name of the tap & title of page.
    expect(find.text('Grapes'), findsNothing);
    expect(find.text('Figs'), findsOneWidget);
    expect(find.text('Apples'), findsNothing);

    // Go to "Search".
    await tester.tap(find.text('Search'));
    await tester.pumpAndSettle();

    expect(find.text('Apples'), findsOneWidget);
    expect(find.text('Tangelo'), findsNothing);
    await tester.enterText(
        find.byType(CupertinoTextField).hitTestable(), 'Tan');
    await tester.pumpAndSettle();
    expect(find.text('Apples'), findsNothing);
    expect(find.text('Tangelo'), findsOneWidget);
    expect(find.text('Tan').hitTestable(), findsOneWidget);

    // Restores search text and result.
    await tester.restartAndRestore();
    expect(find.text('Apples'), findsNothing);
    expect(find.text('Tangelo'), findsOneWidget);
    expect(find.text('Tan').hitTestable(), findsOneWidget); // search text

    expect(find.text('Serving info'), findsNothing);

    // Open a details page from search
    await tester.tap(find.text('Tangelo'));
    await tester.pumpAndSettle();

    expect(find.text('Tangelo'), findsOneWidget);
    expect(find.text('Serving info'), findsOneWidget);

    // Restores details page
    await tester.restartAndRestore();
    expect(find.text('Tangelo'), findsOneWidget);
    expect(find.text('Serving info'), findsOneWidget);

    // Go back to search page, is also restored
    tester.state<NavigatorState>(find.byType(Navigator).last).pop();
    await tester.pumpAndSettle();

    expect(find.text('Serving info'), findsNothing);
    expect(find.text('Apples'), findsNothing);
    expect(find.text('Tangelo'), findsOneWidget);
    expect(find.text('Tan').hitTestable(), findsOneWidget); // search text

    expect(find.text('Calorie Target'), findsNothing);

    // Go to "Settings".
    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();
    expect(find.text('Calorie Target'), findsOneWidget);

    await tester.restartAndRestore();
    expect(find.text('Calorie Target'), findsOneWidget);

    expect(find.text('AVAILABLE CALORIE LEVELS'), findsNothing);

    // Go to calorie target selection.
    await tester.tap(find.text('Calorie Target'));
    await tester.pumpAndSettle();
    expect(find.text('AVAILABLE CALORIE LEVELS'), findsOneWidget);

    await tester.restartAndRestore();
    expect(find.text('AVAILABLE CALORIE LEVELS'), findsOneWidget);

    // Go back to settings main screen.
    tester.state<NavigatorState>(find.byType(Navigator).last).pop();
    await tester.pumpAndSettle();
    expect(find.text('AVAILABLE CALORIE LEVELS'), findsNothing);
    expect(find.text('Allium'), findsNothing);

    // Go to preferred categories selection.
    await tester.tap(find.text('Preferred Categories'));
    await tester.pumpAndSettle();
    expect(find.text('Calorie Target'), findsNothing);
    expect(find.text('Allium'), findsOneWidget);

    await tester.restartAndRestore();
    expect(find.text('Allium'), findsOneWidget);

    // Go back to settings main screen.
    tester.state<NavigatorState>(find.byType(Navigator).last).pop();
    await tester.pumpAndSettle();
    expect(find.text('Allium'), findsNothing);
    expect(find.text('Preferred Categories'), findsOneWidget);
    expect(find.text('Calorie Target'), findsOneWidget);
  });
}
