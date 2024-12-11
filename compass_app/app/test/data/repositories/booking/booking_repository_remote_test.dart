// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/data/repositories/booking/booking_repository.dart';
import 'package:compass_app/data/repositories/booking/booking_repository_remote.dart';
import 'package:compass_app/utils/result.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/fakes/services/fake_api_client.dart';
import '../../../../testing/models/booking.dart';
import '../../../../testing/utils/result.dart';

void main() {
  group('BookingRepositoryRemote tests', () {
    late BookingRepository bookingRepository;
    late FakeApiClient fakeApiClient;

    setUp(() {
      fakeApiClient = FakeApiClient();
      bookingRepository = BookingRepositoryRemote(
        apiClient: fakeApiClient,
      );
    });

    test('should get booking', () async {
      final result = await bookingRepository.getBooking(0);
      final booking = result.asOk.value;
      expect(booking, kBooking.copyWith(id: 0));
    });

    test('should create booking', () async {
      expect(fakeApiClient.bookings, isEmpty);
      final result = await bookingRepository.createBooking(kBooking);
      expect(result, isA<Ok<void>>());
      expect(fakeApiClient.bookings.first, kBookingApiModel);
    });

    test('should get list of booking', () async {
      final result = await bookingRepository.getBookingsList();
      final list = result.asOk.value;
      expect(list, [kBookingSummary]);
    });

    test('should delete booking', () async {
      // Ensure no bookings exist
      expect(fakeApiClient.bookings, isEmpty);

      // Add a booking
      var result = await bookingRepository.createBooking(kBooking);
      expect(result, isA<Ok<void>>());

      // Delete the booking
      result = await bookingRepository.delete(0);
      expect(result, isA<Ok<void>>());

      // Check if the booking was deleted from the server
      expect(fakeApiClient.bookings, isEmpty);
    });
  });
}
