// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/data/repositories/booking/booking_repository.dart';
import 'package:compass_app/domain/models/booking/booking.dart';
import 'package:compass_app/domain/models/booking/booking_summary.dart';
import 'package:compass_app/utils/result.dart';

class FakeBookingRepository implements BookingRepository {
  List<Booking> bookings = List.empty(growable: true);
  int sequentialId = 0;

  @override
  Future<Result<void>> createBooking(Booking booking) async {
    final bookingWithId = booking.copyWith(id: sequentialId++);
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
