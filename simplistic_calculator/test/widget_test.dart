import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simplistic_calculator/main.dart';

void main() {
  testWidgets('Calculator smoke test', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const ProviderScope(
        child: CalculatorApp(),
      ),
    );

    // Verify that our counter starts at 1 through 9, + and =.
    expect(find.text('1'), findsOneWidget);
    expect(find.text('2'), findsOneWidget);
    expect(find.text('3'), findsOneWidget);
    expect(find.text('4'), findsOneWidget);
    expect(find.text('5'), findsOneWidget);
    expect(find.text('6'), findsOneWidget);
    expect(find.text('7'), findsOneWidget);
    expect(find.text('8'), findsOneWidget);
    expect(find.text('9'), findsOneWidget);
    expect(find.text('+'), findsOneWidget);
    expect(find.text('='), findsOneWidget);

    await tester.tap(find.text('9'));
    await tester.tap(find.text('+'));
    await tester.tap(find.text('6'));
    await tester.tap(find.text('='));
    await tester.pump();

    // Verify that our calculator evaluates correctly.
    expect(find.text('15'), findsOneWidget);
  });
}
