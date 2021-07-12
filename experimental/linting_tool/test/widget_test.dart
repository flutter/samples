// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:linting_tool/app.dart';
import 'package:linting_tool/pages/default_lints_page.dart';
import 'package:linting_tool/pages/home_page.dart';
import 'package:linting_tool/pages/saved_lints_page.dart';

void main() {
  testWidgets('NavigationRail smoke test', (tester) async {
    await tester.pumpWidget(const LintingTool());

    expect(find.byType(SavedLintsPage), findsNothing);
    await tester.tap(find.text('Saved Profiles'));
    await tester.pumpAndSettle();
    expect(find.byType(SavedLintsPage), findsOneWidget);

    expect(find.byType(DefaultLintsPage), findsNothing);
    await tester.tap(find.text('Default Profiles'));
    await tester.pumpAndSettle();
    expect(find.byType(DefaultLintsPage), findsOneWidget);

    expect(find.byType(HomePage), findsNothing);
    await tester.tap(find.text('Home'));
    await tester.pumpAndSettle();
    expect(find.byType(HomePage), findsOneWidget);
  });
}
