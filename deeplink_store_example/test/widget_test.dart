// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:deeplink_store_example/main.dart';
import 'package:go_router/go_router.dart';

void main() {
  testWidgets('Can open home page', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('Material Store'), findsOneWidget);
  });

  testWidgets('Can open detail page', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('Vagabond sack'), findsOneWidget);

    await tester.tap(find.text('Vagabond sack'));
    await tester.pumpAndSettle();

    expect(find.text('Material Store'), findsNothing);
    expect(find.text('Vagabond sack'), findsOneWidget);
    expect(find.text('\$120'), findsOneWidget);
  });

  testWidgets('Can show category page', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    tester.element(find.text('Material Store')).go('/category/home');
    await tester.pumpAndSettle();

    expect(find.text('Home Decorations'), findsOneWidget);
  });
}
