import 'package:compass_app/data/repositories/booking/booking_repository.dart';
import 'package:compass_app/domain/models/booking/booking.dart';
import 'package:compass_app/domain/models/booking/booking_summary.dart';
import 'package:compass_app/utils/result.dart';

class FakeBookingRepository implements BookingRepository {
  List<Booking> bookings = List.empty(growable: true);

  @override
  Future<Result<void>> createBooking(Booking booking) async {
    final id = bookings.isEmpty ? 0 : bookings.last.id! + 1;
    final bookingWithId = booking.copyWith(id: id);
    bookings.add(bookingWithId);
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

  @override
  Future<Result<void>> delete(int id) async {
    bookings.removeWhere((booking) => booking.id == id);
    return Result.ok(null);
  }
}
