// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material_3_demo/main.dart';
import 'package:material_3_demo/src/color_box.dart';
import 'package:material_3_demo/src/color_palettes_screen.dart';
import 'package:material_3_demo/src/scheme.dart';

import 'component_screen_test.dart';

void main() {
  testWidgets(
    'Color palettes screen shows correctly when color icon is clicked '
    'on NavigationBar',
    (tester) async {
      widgetSetup(tester, 449);
      addTearDown(tester.view.resetPhysicalSize);
      await tester.pumpWidget(const App());

      expect(find.text('Light ColorScheme'), findsNothing);
      expect(find.text('Dark ColorScheme'), findsNothing);
      expect(find.byType(NavigationBar), findsOneWidget);
      Finder colorIconOnBar = find.descendant(
        of: find.byType(NavigationBar),
        matching: find.widgetWithIcon(
          NavigationDestination,
          Icons.format_paint_outlined,
        ),
      );
      expect(colorIconOnBar, findsOneWidget);
      await tester.tap(colorIconOnBar);
      await tester.pumpAndSettle(const Duration(microseconds: 500));
      expect(colorIconOnBar, findsNothing);

      Finder selectedColorIconOnBar = find.descendant(
        of: find.byType(NavigationBar),
        matching: find.widgetWithIcon(
          NavigationDestination,
          Icons.format_paint,
        ),
      );
      expect(selectedColorIconOnBar, findsOneWidget);
      expect(find.text('Light ColorScheme'), findsOneWidget);
      expect(find.text('Dark ColorScheme'), findsOneWidget);
    },
  );

  testWidgets(
    'Color palettes screen shows correctly when color icon is clicked '
    'on NavigationRail',
    (tester) async {
      widgetSetup(
        tester,
        1200,
      ); // NavigationRail shows only when width is > 1000.
      addTearDown(tester.view.resetPhysicalSize);
      await tester.pumpWidget(const App());
      await tester.pumpAndSettle();
      expect(find.text('Light ColorScheme'), findsNothing);
      expect(find.text('Dark ColorScheme'), findsNothing);
      Finder colorIconOnRail = find.descendant(
        of: find.byType(NavigationRail),
        matching: find.byIcon(Icons.format_paint_outlined),
      );
      expect(colorIconOnRail, findsOneWidget);
      await tester.tap(colorIconOnRail);
      await tester.pumpAndSettle(const Duration(microseconds: 500));
      expect(colorIconOnRail, findsNothing);
      Finder selectedColorIconOnRail = find.descendant(
        of: find.byType(NavigationRail),
        matching: find.byIcon(Icons.format_paint),
      );
      expect(selectedColorIconOnRail, findsOneWidget);
      expect(find.text('Light ColorScheme'), findsOneWidget);
      expect(find.text('Dark ColorScheme'), findsOneWidget);
    },
  );

  testWidgets('Color screen shows correct content', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: Row(children: [ColorPalettesScreen()])),
      ),
    );
    expect(find.text('Light ColorScheme'), findsOneWidget);
    expect(find.text('Dark ColorScheme'), findsOneWidget);
    expect(find.byType(SchemePreview, skipOffstage: false), findsNWidgets(2));
  });

  testWidgets(
    'ColorBox displays correct info and copies hex color on button tap',
    (tester) async {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMessageHandler('flutter/platform', (_) async {
            // To intercept method calls to 'Clipboard.setData'
            return const JSONMethodCodec().encodeSuccessEnvelope(null);
          });
      const hexColor = 0xFF3d3d8d;
      const testColor = Color(hexColor);
      const onTestColor = Colors.white;
      const testLabel = 'Test Label';
      const testTone = '50';

      final gesture = await tester.createGesture(kind: PointerDeviceKind.mouse);

      // Wrap in MaterialApp + Scaffold so we can show SnackBars
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ColorBox(
              label: testLabel,
              tone: testTone,
              color: testColor,
              onColor: onTestColor,
              height: 100,
              width: 100,
              displayPaletteInfo: true,
            ),
          ),
        ),
      );

      expect(find.text(testLabel), findsOneWidget);
      expect(find.text(testTone), findsOneWidget);

      // The copy icon should NOT be there initially (only appears on hover).
      expect(find.byIcon(Icons.copy), findsNothing);

      await gesture.addPointer(location: Offset.zero);
      addTearDown(gesture.removePointer);
      await tester.pump();
      await gesture.moveTo(tester.getCenter(find.byType(ColorBox)));
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.copy), findsOneWidget);

      // Tap the copy icon, which copies the hex to clipboard and shows a SnackBar.
      await tester.tap(find.byIcon(Icons.copy));
      await tester.pumpAndSettle();

      expect(find.byType(SnackBar), findsOneWidget);

      expect(
        find.text(
          'Copied #${hexColor.toRadixString(16).substring(2)} to clipboard',
        ),
        findsOneWidget,
      );
    },
  );
}
