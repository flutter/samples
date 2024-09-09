import 'package:collection/collection.dart';
import 'package:compass_app/data/repositories/booking/booking_repository.dart';
import 'package:compass_app/domain/models/booking/booking.dart';
import 'package:compass_app/domain/models/booking/booking_summary.dart';
import 'package:compass_app/utils/result.dart';

class FakeBookingRepository implements BookingRepository {
  List<Booking> bookings = List.empty(growable: true);

  @override
  Future<Result<void>> createBooking(Booking booking) async {
    bookings.add(booking);
    return Result.ok(null);
  }

  @override
  Future<Result<Booking>> getBooking(int id) async {
    return Result.ok(bookings[id]);
  }

  @override
  Future<Result<List<BookingSummary>>> getBookingsList() async {
    return Result.ok(_createSummaries());
  }

  List<BookingSummary> _createSummaries() {
    return bookings
        .mapIndexed(
          (index, booking) => BookingSummary(
            id: index,
            name:
                '${booking.destination.name}, ${booking.destination.continent}',
            startDate: booking.startDate,
            endDate: booking.endDate,
          ),
        )
        .toList();
  }
}
