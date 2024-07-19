import 'package:compass_model/model.dart';
import 'package:flutter/foundation.dart';

import '../../../data/repositories/activity/activity_repository.dart';
import '../../../routing/queries/search_query_parameters.dart';
import '../../../utils/result.dart';

class ActivitiesViewModel extends ChangeNotifier {
  ActivitiesViewModel({
    required ActivityRepository activityRepository,
    required SearchQueryParameters queryParameters,
  })  : _activityRepository = activityRepository,
        _queryParameters = queryParameters;

  final ActivityRepository _activityRepository;
  final SearchQueryParameters _queryParameters;
  List<Activity> _activities = <Activity>[];
  final Set<String> _selectedActivities = <String>{};

  /// List of [Activity] per destination.
  List<Activity> get activities => _activities;

  /// Selected [Activity] by ref.
  Set<String> get selectedActivities => _selectedActivities;

  /// Load list of [Activity] for a [Destination] by ref.
  Future<void> loadActivities() async {
    assert(
      _queryParameters.destination != null,
      '"destination" missing in query parameters',
    );
    final destinationRef = _queryParameters.destination!;
    final result = await _activityRepository.getByDestination(destinationRef);
    switch (result) {
      case Ok():
        {
          _activities = result.value;
          print(_activities);
        }
      case Error():
        {
          // TODO: Handle error
          print(result.error);
        }
    }
    notifyListeners();
  }

  /// Add [Activity] to selected list.
  void addActivity(String activityRef) {
    assert(
      activities.any((activity) => activity.ref == activityRef),
      "Activity $activityRef not found",
    );
    _selectedActivities.add(activityRef);
    notifyListeners();
  }

  /// Remove [Activity] from selected list.
  void removeActivity(String activityRef) {
    assert(
      activities.any((activity) => activity.ref == activityRef),
      "Activity $activityRef not found",
    );
    _selectedActivities.remove(activityRef);
    notifyListeners();
  }
}
