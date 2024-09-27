// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_summary.freezed.dart';
part 'booking_summary.g.dart';

/// BookingSummary contains the necessary data to display a booking
/// in the user home screen, but lacks the rest of the booking data
/// like activitities or destination.
///
/// Use the [BookingRepository] to obtain a full [Booking]
/// using the [BookingSummary.id].
@freezed
class BookingSummary with _$BookingSummary {
  const factory BookingSummary({
    /// Booking id
    required int id,

    /// Name to be displayed
    required String name,

    /// Start date of the booking
    required DateTime startDate,

    /// End date of the booking
    required DateTime endDate,
  }) = _BookingSummary;

  factory BookingSummary.fromJson(Map<String, Object?> json) =>
      _$BookingSummaryFromJson(json);
}
