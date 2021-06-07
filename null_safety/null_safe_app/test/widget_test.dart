// This is a basic widget test that tests just the good app code.

import 'package:flutter_test/flutter_test.dart';
import 'package:null_safe_app/goodapp.dart';

void main() {
  testWidgets('App smoke test', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const GoodMyApp());

    // Verify that we have a forecast, or a managed failure.
    expect(find.textContaining('Temperature'), findsOneWidget);
  });
}
