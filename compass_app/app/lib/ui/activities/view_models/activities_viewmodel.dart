import 'package:compass_model/model.dart';
import 'package:flutter/foundation.dart';

import '../../../data/repositories/activity/activity_repository.dart';
import '../../../data/repositories/itinerary_config/itinerary_config_repository.dart';
import '../../../utils/command.dart';
import '../../../utils/result.dart';

class ActivitiesViewModel extends ChangeNotifier {
  ActivitiesViewModel({
    required ActivityRepository activityRepository,
    required ItineraryConfigRepository itineraryConfigRepository,
  })  : _activityRepository = activityRepository,
        _itineraryConfigRepository = itineraryConfigRepository {
    loadActivities = Command0(_loadActivities)..execute();
  }

  final ActivityRepository _activityRepository;
  final ItineraryConfigRepository _itineraryConfigRepository;
  List<Activity> _activities = <Activity>[];
  final Set<String> _selectedActivities = <String>{};

  /// List of [Activity] per destination.
  List<Activity> get activities => _activities;

  /// Selected [Activity] by ref.
  Set<String> get selectedActivities => _selectedActivities;

  /// Load list of [Activity] for a [Destination] by ref.
  late final Command0 loadActivities;

  Future<void> _loadActivities() async {
    final result = await _itineraryConfigRepository.getItineraryConfig();
    if (result is Error) {
      // TODO: Handle error
      print(result.asError.error);
      return;
    }

    final destinationRef = result.asOk.value.destination;
    if (destinationRef == null) {
      // TODO: Error here
      return;
    }

    final resultActivities =
        await _activityRepository.getByDestination(destinationRef);
    switch (resultActivities) {
      case Ok():
        {
          _activities = resultActivities.value;
          print(_activities);
        }
      case Error():
        {
          // TODO: Handle error
          print(resultActivities.error);
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
