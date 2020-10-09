// This is a basic widget test that tests just the good app code. You can
// experiment with changing this to test the bad app code (change the import in
// line 5 and the constructor call in line 10), and then run tests.

import 'package:flutter_test/flutter_test.dart';
import 'package:null_safe_app/goodapp.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(GoodMyApp());

    // Verify that we have a forecase.
    expect(find.text('Temperature next 3 days:'), findsOneWidget);
  });
}
