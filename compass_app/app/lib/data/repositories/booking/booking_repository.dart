import 'package:compass_model/model.dart';

import '../../../domain/models/booking/booking_summary.dart';
import '../../../utils/result.dart';

abstract class BookingRepository {
  /// Returns the list of [BookingSummary] for the current user.
  Future<Result<List<BookingSummary>>> getBookingsList();

  /// Returns a [Booking] given the id.
  Future<Result<Booking>> getBooking(int id);

  /// Creates a new [Booking].
  Future<Result<void>> createBooking(Booking booking);
}
