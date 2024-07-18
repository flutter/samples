import 'package:compass_model/model.dart';

import '../../../utils/result.dart';
import '../../services/api_client.dart';
import 'activity_repository.dart';

/// Remote data source for [Activity].
/// Implements basic local caching.
/// See: https://docs.flutter.dev/get-started/fwe/local-caching
class ActivityRepositoryRemote implements ActivityRepository {
  ActivityRepositoryRemote({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;

  final Map<String, List<Activity>> _cachedData = {};

  @override
  Future<Result<List<Activity>>> getByDestination(String ref) async {
    if (!_cachedData.containsKey(ref)) {
      // No cached data, request activities
      final result = await _apiClient.getActivityByDestination(ref);
      if (result is Ok) {
        final value = result.asOk.value;
        if (value.isNotEmpty) {
          // Store value if result Ok
          _cachedData[ref] = value;
        } else {
          return Result.error(ActivitiesNotFoundException(destinationRef: ref));
        }
      }
      return result;
    } else {
      // Return cached data if available
      return Result.ok(_cachedData[ref]!);
    }
  }
}
