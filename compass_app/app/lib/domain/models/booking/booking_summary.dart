import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_summary.freezed.dart';
part 'booking_summary.g.dart';

@freezed
class BookingSummary with _$BookingSummary {
  const factory BookingSummary({
    /// Booking id
    required int id,

    /// Destination name to be displayed.
    required String destinationName,

    /// Start date of the booking.
    required DateTime startDate,

    /// End date of the booking
    required DateTime endDate,
  }) = _BookingSummary;

  factory BookingSummary.fromJson(Map<String, Object?> json) =>
      _$BookingSummaryFromJson(json);
}
