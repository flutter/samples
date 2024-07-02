
import 'package:compass_app/utils/result.dart';
import 'package:compass_app/data/repositories/destination/destination_repository_local.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DestinationRepositoryLocal tests', () {
    // To load assets
    TestWidgetsFlutterBinding.ensureInitialized();

    final repository = DestinationRepositoryLocal();

    test('should load and parse', () async {
      // Should load the json and parse it
      final result = await repository.getDestinations();
      expect(result, isA<Ok>());

      // Check that the list is complete
      final list = result.asOk.value;
      expect(list.length, 137);

      // Check first item
      final destination = list.first;
      expect(destination.name, 'Alaska');
    });
  });
}
