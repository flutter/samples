import 'package:compass_model/model.dart';

import '../../../data/repositories/destination/destination_repository.dart';
import '../../../utils/result.dart';

class BookingComponent {
  
  final DestinationRepository _destinationRepository;
  
  /// Create [Booking] from a stored [ItineraryConfig]
  Future<Result<Booking>> createBooking(ItineraryConfig itineraryConfig) async {
    final destination = await _fetchDestination(itineraryConfig.destination);
    final activities = await _fetchActivities(destination.ref);
    return Booking(
      startDate: itineraryConfig.startDate!,
      endDate: itineraryConfig.endDate!,
      destination: destination,
      activity: activities,
    );
  }
  
  Future<Result<Destination>> _fetchDestination(String? destinationRef) async {
    final result = await _destinationRepository.getDestinations();
    switch (result) {
      case Ok<List<Destination>>():
        final destination = result.value.firstWhere((destination) => destination.ref == destinationRef);
        return Ok(destination);
      case Error<List<Destination>>():
        return Result.error(result.error);
    }
  }
}