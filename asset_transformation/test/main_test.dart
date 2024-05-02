import 'package:flutter_test/flutter_test.dart';
import 'package:asset_transformation/main.dart';

void main() {
  testWidgets('app can render without exceptions', (WidgetTester tester) async {
    await tester.pumpWidget(const MainApp());
  });
}
