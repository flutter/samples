// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider_shopper/main.dart';

void main() {
  testWidgets('smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Log in.
    await tester.tap(find.text('ENTER'));
    await tester.pumpAndSettle();

    // Check that shopping cart is empty at start.
    await tester.tap(find.byIcon(Icons.shopping_cart));
    await tester.pumpAndSettle();
    expect(find.text('\$0'), findsOneWidget);

    // Buy an item.
    await tester.pageBack();
    await tester.pumpAndSettle();
    await tester.tap(find.text('ADD').first);

    // Check that the shopping cart is not empty anymore.
    await tester.tap(find.byIcon(Icons.shopping_cart));
    await tester.pumpAndSettle();
    expect(find.text('\$0'), findsNothing);
  });
}
