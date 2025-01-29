import 'package:flutter_test/flutter_test.dart';

import 'package:rolodex/main.dart';

void main() {
  testWidgets('Opens on all contacts page', (WidgetTester tester) async {
    await tester.pumpWidget(const RolodexApp());

    expect(find.text('Contacts page'), findsOneWidget);
    expect(find.text('Add List'), findsNothing);

    await tester.tap(find.text('Lists'));
    await tester.pumpAndSettle();

    expect(find.text('Add List'), findsOneWidget);
    expect(find.text('Contacts page'), findsNothing);
  });
}
