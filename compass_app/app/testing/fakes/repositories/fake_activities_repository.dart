import 'package:compass_app/data/repositories/activity/activity_repository.dart';
import 'package:compass_app/utils/result.dart';
import 'package:compass_model/src/model/activity/activity.dart';
import 'package:flutter/foundation.dart';

import '../../models/activity.dart';
import '../../models/destination.dart';

class FakeActivityRepository implements ActivityRepository {
  Map<String, List<Activity>> activities = {
    "DESTINATION": [kActivity],
  };

  @override
  Future<Result<List<Activity>>> getByDestination(String ref) async {
    return Result.ok(activities[ref]!);
  }

  @override
  Future<Result<List<Activity>>> getByRef(
    String destinationRef,
    List<String> activitiesRef,
  ) {
    assert(destinationRef == kDestination1.ref);
    assert(activitiesRef.first == kActivity.ref);
    return SynchronousFuture(Result.ok([kActivity]));
  }
}
