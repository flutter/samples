import 'package:compass_model/model.dart';

import '../../../utils/result.dart';

/// Data source for activities.
abstract class ActivityRepository {
  /// Get activities by [Destination] ref.
  Future<Result<List<Activity>>> getByDestination(String ref);

  /// Get activities by [Activity] ref.
  /// Activity refs are not unique, so providing a destination ref is required.
  Future<Result<List<Activity>>> getByRef(
    String destinationRef,
    List<String> activitiesRef,
  );
}
