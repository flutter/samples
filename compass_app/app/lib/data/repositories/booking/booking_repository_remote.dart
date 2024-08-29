import 'package:compass_model/model.dart';

import '../../../domain/models/booking/booking_summary.dart';
import '../../../utils/result.dart';
import '../../services/api/api_client.dart';
import '../../services/api/model/booking/booking_api_model.dart';
import 'booking_repository.dart';

class BookingRepositoryRemote implements BookingRepository {
  BookingRepositoryRemote({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;

  List<Destination>? _cachedDestinations;

  @override
  Future<Result<void>> createBooking(Booking booking) {
    final BookingApiModel bookingApiModel = BookingApiModel(
      startDate: booking.startDate,
      endDate: booking.endDate,
      destinationRef: booking.destination.ref,
      activitiesRef: booking.activity.map((activity) => activity.ref).toList(),
    );
    return _apiClient.postBooking(bookingApiModel);
  }

  @override
  Future<Result<Booking>> getBooking(int id) async {
    // Get booking by ID from server
    final resultBooking = await _apiClient.getBooking(id);
    if (resultBooking is Error<BookingApiModel>) {
      return Result.error(resultBooking.error);
    }
    final booking = resultBooking.asOk.value;

    // Load destinations if not loaded yet
    if (_cachedDestinations != null) {
      final resultDestination = await _apiClient.getDestinations();
      if (resultDestination is Error<List<Destination>>) {
        return Result.error(resultDestination.error);
      }
      _cachedDestinations = resultDestination.asOk.value;
    }

    // Get destination for booking
    final destination = _cachedDestinations!
        .firstWhere((destination) => destination.ref == booking.destinationRef);

    final resultActivities =
        await _apiClient.getActivityByDestination(destination.ref);

    if (resultActivities is Error<List<Activity>>) {
      return Result.error(resultActivities.error);
    }
    final activities = resultActivities.asOk.value
        .where((activity) => booking.activitiesRef.contains(activity.ref))
        .toList();

    return Result.ok(
      Booking(
        startDate: booking.startDate,
        endDate: booking.endDate,
        destination: destination,
        activity: activities,
      ),
    );
  }

  @override
  Future<Result<List<BookingSummary>>> getBookingsList() {
    // TODO: implement getBookingsList
    throw UnimplementedError();
  }
}
