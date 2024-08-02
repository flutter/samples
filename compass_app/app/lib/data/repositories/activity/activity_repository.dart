import 'package:compass_model/model.dart';

import '../../../utils/result.dart';

/// Data source for activities.
abstract class ActivityRepository {
  /// Get activities by [Destination] ref.
  Future<Result<List<Activity>>> getByDestination(String ref);

  /// Get activities by [Activity] ref.
  Future<Result<List<Activity>>> getByRef(List<String> activitiesRef);
}
