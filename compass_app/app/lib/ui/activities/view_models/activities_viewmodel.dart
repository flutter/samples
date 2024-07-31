import 'package:compass_model/model.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

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
    saveActivities = Command0(() async {
      _log.shout(
        'Save activities not implemented',
        null,
        StackTrace.current,
      );
      return Result.error(Exception('Not implemented'));
    });
  }

  final _log = Logger('ActivitiesViewModel');
  final ActivityRepository _activityRepository;
  final ItineraryConfigRepository _itineraryConfigRepository;
  List<Activity> _daytimeActivities = <Activity>[];
  List<Activity> _eveningActivities = <Activity>[];
  final Set<String> _selectedActivities = <String>{};

  /// List of daytime [Activity] per destination.
  List<Activity> get daytimeActivities => _daytimeActivities;

  /// List of evening [Activity] per destination.
  List<Activity> get eveningActivities => _eveningActivities;

  /// Selected [Activity] by ref.
  Set<String> get selectedActivities => _selectedActivities;

  /// Load list of [Activity] for a [Destination] by ref.
  late final Command0 loadActivities;

  /// Save list [selectedActivities] into itinerary configuration.
  late final Command0 saveActivities;

  Future<Result<void>> _loadActivities() async {
    final result = await _itineraryConfigRepository.getItineraryConfig();
    if (result is Error) {
      _log.warning(
        'Failed to load stored ItineraryConfig',
        result.asError.error,
      );
      return result;
    }

    final destinationRef = result.asOk.value.destination;
    if (destinationRef == null) {
      _log.severe('Destination missing in ItineraryConfig');
      return Result.error(Exception('Destination not found'));
    }

    final resultActivities =
        await _activityRepository.getByDestination(destinationRef);
    switch (resultActivities) {
      case Ok():
        {
          _daytimeActivities = resultActivities.value
              .where((activity) => [
                    TimeOfDay.any,
                    TimeOfDay.morning,
                    TimeOfDay.afternoon,
                  ].contains(activity.timeOfDay))
              .toList();

          _eveningActivities = resultActivities.value
              .where((activity) => [
                    TimeOfDay.evening,
                    TimeOfDay.night,
                  ].contains(activity.timeOfDay))
              .toList();

          _log.fine('Activities (daytime: ${_daytimeActivities.length}, '
              'evening: ${_eveningActivities.length}) loaded');
        }
      case Error():
        {
          _log.warning('Failed to load activities', resultActivities.error);
        }
    }

    notifyListeners();
    return resultActivities;
  }

  /// Add [Activity] to selected list.
  void addActivity(String activityRef) {
    assert(
      (_daytimeActivities + _eveningActivities)
          .any((activity) => activity.ref == activityRef),
      "Activity $activityRef not found",
    );
    _selectedActivities.add(activityRef);
    _log.finest('Activity $activityRef added');
    notifyListeners();
  }

  /// Remove [Activity] from selected list.
  void removeActivity(String activityRef) {
    assert(
      (_daytimeActivities + _eveningActivities)
          .any((activity) => activity.ref == activityRef),
      "Activity $activityRef not found",
    );
    _selectedActivities.remove(activityRef);
    _log.finest('Activity $activityRef removed');
    notifyListeners();
  }
}
