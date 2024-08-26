import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

@freezed
class Booking with _$Booking {
  const factory Booking({
    /// Booking ID. Generated when stored in server.
    int? id,

    /// Start date of the trip
    required DateTime startDate,

    /// End date of the trip
    required DateTime endDate,

    /// Destination of the trip
    required String destinationRef,

    /// List of chosen activities
    required List<String> activitiesRef,
  }) = _Booking;

  factory Booking.fromJson(Map<String, Object?> json) =>
      _$BookingFromJson(json);
}
