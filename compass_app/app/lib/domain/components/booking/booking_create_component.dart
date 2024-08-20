import 'package:compass_model/model.dart';
import 'package:logging/logging.dart';

import '../../../data/repositories/activity/activity_repository.dart';
import '../../../data/repositories/destination/destination_repository.dart';
import '../../../utils/result.dart';

/// Component for creating [Booking] objects from [ItineraryConfig].
///
/// Fetches [Destination] and [Activity] objects from repositories,
/// checks if dates are set and creates a [Booking] object.
class BookingCreateComponent {
  BookingCreateComponent({
    required DestinationRepository destinationRepository,
    required ActivityRepository activityRepository,
  })  : _destinationRepository = destinationRepository,
        _activityRepository = activityRepository;

  final DestinationRepository _destinationRepository;
  final ActivityRepository _activityRepository;
  final _log = Logger('BookingComponent');

  /// Create [Booking] from a stored [ItineraryConfig]
  Future<Result<Booking>> createFrom(ItineraryConfig itineraryConfig) async {
    // Get Destination object from repository
    if (itineraryConfig.destination == null) {
      _log.warning('Destination is not set');
      return Result.error(Exception('Destination is not set'));
    }
    final destinationResult =
        await _fetchDestination(itineraryConfig.destination!);
    if (destinationResult is Error<Destination>) {
      _log.warning('Error fetching destination: ${destinationResult.error}');
      return Result.error(destinationResult.error);
    }
    _log.fine('Destination loaded: ${destinationResult.asOk.value.ref}');

    // Get Activity objects from repository
    if (itineraryConfig.activities.isEmpty) {
      _log.warning('Activities are not set');
      return Result.error(Exception('Activities are not set'));
    }
    final activitiesResult = await _activityRepository.getByDestination(
      itineraryConfig.destination!,
    );
    if (activitiesResult is Error<List<Activity>>) {
      _log.warning('Error fetching activities: ${activitiesResult.error}');
      return Result.error(activitiesResult.error);
    }
    final activities = activitiesResult.asOk.value
        .where(
          (activity) => itineraryConfig.activities.contains(activity.ref),
        )
        .toList();
    _log.fine('Activities loaded (${activities.length})');

    // Check if dates are set
    if (itineraryConfig.startDate == null || itineraryConfig.endDate == null) {
      _log.warning('Dates are not set');
      return Result.error(Exception('Dates are not set'));
    }

    // Create Booking object
    return Result.ok(
      Booking(
        startDate: itineraryConfig.startDate!,
        endDate: itineraryConfig.endDate!,
        destination: destinationResult.asOk.value,
        activity: activities,
      ),
    );
  }

  Future<Result<Destination>> _fetchDestination(String destinationRef) async {
    final result = await _destinationRepository.getDestinations();
    switch (result) {
      case Ok<List<Destination>>():
        final destination = result.value
            .firstWhere((destination) => destination.ref == destinationRef);
        return Ok(destination);
      case Error<List<Destination>>():
        return Result.error(result.error);
    }
  }
}
