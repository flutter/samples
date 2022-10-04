import 'package:flutter_test/flutter_test.dart';
import 'package:client/main.dart';

void main() {
  group('App should', () {
    testWidgets('build its widgets', (WidgetTester tester) async {
      await tester.pumpWidget(
        MyApp(
          getCount: () => Future.value(1),
          increment: (int x) => Future.value(x),
        ),
      );
    });
  });
}
