import 'package:compass_model/model.dart';

import '../../../utils/result.dart';

/// Data source for activities.
abstract class ActivityRepository {
  /// Get activities by [Destination] ref.
  ///
  /// Returns [Result.error] with [ActivitiesNotFoundException]
  /// if no Activities can be found.
  Future<Result<List<Activity>>> getByDestination(String ref);
}

/// Example of custom exception
/// TODO: Is there a better place for this class?
class ActivitiesNotFoundException implements Exception {
  ActivitiesNotFoundException({
    required this.destinationRef,
  });

  /// Used [Destination] ref.
  final String destinationRef;

  @override
  String toString() =>
      'ActivitiesNotFoundException for Destination: "$destinationRef"';
}
