import 'dart:async';

import 'package:compass_model/model.dart';
import 'package:collection/collection.dart';
import '../../../domain/models/booking/booking_summary.dart';
import '../../../utils/result.dart';

import '../../services/local/local_data_service.dart';
import 'booking_repository.dart';

class BookingRepositoryLocal implements BookingRepository {
  BookingRepositoryLocal({
    required LocalDataService localDataService,
  }) : _localDataService = localDataService;

  final _bookings = List<Booking>.empty(growable: true);
  final LocalDataService _localDataService;

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
    return Result.ok(_createSummaries());
  }

  List<BookingSummary> _createSummaries() {
    return _bookings
        .mapIndexed(
          (index, booking) => BookingSummary(
            id: index,
            destinationName:
                '${booking.destination.name}, ${booking.destination.continent}',
            startDate: booking.startDate,
            endDate: booking.endDate,
          ),
        )
        .toList();
  }

  Future<void> _createDefaultBooking() async {
    // create a default booking the first time
    if (_bookings.isEmpty) {
      final destination = (await _localDataService.getDestinations()).first;
      final activities = (await _localDataService.getActivities())
          .where((activity) => activity.destinationRef == destination.ref)
          .take(4)
          .toList();

      _bookings.add(
        Booking(
          startDate: DateTime(2024, 1, 1),
          endDate: DateTime(2024, 2, 1),
          destination: destination,
          activity: activities,
        ),
      );
    }
  }
}
