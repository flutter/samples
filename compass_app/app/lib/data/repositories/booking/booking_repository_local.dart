import 'package:compass_model/model.dart';
import 'package:collection/collection.dart';

import '../../../domain/models/booking/booking_summary.dart';
import '../../../utils/result.dart';

import '../activity/activity_repository_local.dart';
import '../destination/destination_repository_local.dart';
import 'booking_repository.dart';

class BookingRepositoryLocal implements BookingRepository {
  final _bookings = List<Booking>.empty(growable: true);

  @override
  Future<Result<void>> createBooking(Booking booking) async {
    _bookings.add(booking);
    return Result.ok(null);
  }

  @override
  Future<Result<Booking>> getBooking(int id) async {
    await _createDefaultBooking();

    if (id >= _bookings.length || id < 0) {
      return Result.error(Exception('Invalid id: $id'));
    }

    return Result.ok(_bookings[id]);
  }

  @override
  Future<Result<List<BookingSummary>>> getBookingsList() async {
    await _createDefaultBooking();

    return Result.ok(
      _bookings
          .mapIndexed(
            (index, booking) => BookingSummary(
              id: index,
              destinationName: booking.destination.name,
              startDate: booking.startDate,
              endDate: booking.endDate,
            ),
          )
          .toList(),
    );
  }

  Future<Result<void>> _createDefaultBooking() async {
    // create a default booking the first time
    if (_bookings.isEmpty) {
      final destinationRepositoryLocal = DestinationRepositoryLocal();
      final activityRepositoryLocal = ActivityRepositoryLocal();
      final resultDestination =
          await destinationRepositoryLocal.getDestinations();
      if (resultDestination is Error<Destination>) {
        return Result.error(resultDestination.asError.error);
      }
      final destination = resultDestination.asOk.value.first;

      final resultActivities =
          await activityRepositoryLocal.getByDestination(destination.ref);
      if (resultActivities is Error<List<Activity>>) {
        return Result.error(resultActivities.asError.error);
      }
      final activities = resultActivities.asOk.value.take(4).toList();

      _bookings.add(
        Booking(
          startDate: DateTime(2024, 1, 1),
          endDate: DateTime(2024, 2, 1),
          destination: destination,
          activity: activities,
        ),
      );
    }
    return Result.ok(null);
  }
}
