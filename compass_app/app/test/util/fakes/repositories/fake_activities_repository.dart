import 'package:compass_app/data/repositories/activity/activity_repository.dart';
import 'package:compass_app/utils/result.dart';
import 'package:compass_model/src/model/activity/activity.dart';

class FakeActivityRepository implements ActivityRepository {
  Map<String, List<Activity>> activities = {
    "DESTINATION": [
      const Activity(
        description: 'DESCRIPTION',
        destinationRef: 'DESTINATION',
        duration: 3,
        familyFriendly: true,
        imageUrl: 'http://example.com/img.png',
        locationName: 'LOCATION NAME',
        name: 'NAME',
        price: 3,
        ref: 'REF',
        timeOfDay: TimeOfDay.afternoon,
      ),
    ],
  };

  @override
  Future<Result<List<Activity>>> getByDestination(String ref) async {
    return Result.ok(activities[ref]!);
  }
}
