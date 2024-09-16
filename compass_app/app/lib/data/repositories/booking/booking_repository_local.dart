import 'dart:async';

import 'package:collection/collection.dart';

import '../../../domain/models/booking/booking.dart';
import '../../../domain/models/booking/booking_summary.dart';
import '../../../utils/result.dart';

import '../../services/local/local_data_service.dart';
import 'booking_repository.dart';

class BookingRepositoryLocal implements BookingRepository {
  BookingRepositoryLocal({
    required LocalDataService localDataService,
  }) : _localDataService = localDataService;

  bool _isInitialized = false;
  final _bookings = List<Booking>.empty(growable: true);
  final LocalDataService _localDataService;

  @override
  Future<Result<void>> createBooking(Booking booking) async {
    // Bookings created come with a null id, we need to assign one
    final id = _bookings.isEmpty ? 0 : _bookings.last.id! + 1;
    final bookingWithId = booking.copyWith(id: id);
    _bookings.add(bookingWithId);
    return Result.ok(null);
  }

  @override
  Future<Result<Booking>> getBooking(int id) async {
    final booking = _bookings.firstWhereOrNull((booking) => booking.id == id);
    if (booking == null) {
      return Result.error(Exception('Booking not found'));
    }
    return Result.ok(booking);
  }

  @override
  Future<Result<List<BookingSummary>>> getBookingsList() async {
    // Initialize the repository with a default booking
    if (!_isInitialized) {
      await _createDefaultBooking();
      _isInitialized = true;
    }

    return Result.ok(_createSummaries());
  }

  List<BookingSummary> _createSummaries() {
    return _bookings
        .map(
          (booking) => BookingSummary(
            id: booking.id!,
            name:
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
          id: 0,
          startDate: DateTime(2024, 1, 1),
          endDate: DateTime(2024, 2, 1),
          destination: destination,
          activity: activities,
        ),
      );
    }
  }

  @override
  Future<Result<void>> delete(int id) async {
    _bookings.removeWhere((booking) => booking.id == id);
    return Result.ok(null);
  }
}
