import 'package:flutter_test/flutter_test.dart';
import 'package:client/main.dart';

void main() {
  group('App should', () {
    testWidgets('build its widgets', (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
    });
  });
}
