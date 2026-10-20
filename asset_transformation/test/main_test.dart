import 'package:asset_transformation/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('app can render without exceptions', (tester) async {
    await tester.pumpWidget(const MainApp());
  });
}
