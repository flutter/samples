import 'package:compass_app/data/repositories/activity/activity_repository.dart';
import 'package:compass_app/data/repositories/activity/activity_repository_local.dart';
import 'package:compass_app/utils/result.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ActivityRepositoryLocal tests', () {
    // To load assets
    TestWidgetsFlutterBinding.ensureInitialized();

    final repository = ActivityRepositoryLocal();

    test('should get by destination ref', () async {
      final result = await repository.getByDestination('alaska');
      expect(result, isA<Ok>());

      final list = result.asOk.value;
      expect(list.length, 20);

      final activity = list.first;
      expect(activity.name, 'Glacier Trekking and Ice Climbing');
    });
  });
}
