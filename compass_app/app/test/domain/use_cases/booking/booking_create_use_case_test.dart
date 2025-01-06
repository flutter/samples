// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/domain/models/itinerary_config/itinerary_config.dart';
import 'package:compass_app/domain/use_cases/booking/booking_create_use_case.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/fakes/repositories/fake_activities_repository.dart';
import '../../../../testing/fakes/repositories/fake_booking_repository.dart';
import '../../../../testing/fakes/repositories/fake_destination_repository.dart';
import '../../../../testing/models/activity.dart';
import '../../../../testing/models/booking.dart';
import '../../../../testing/models/destination.dart';
import '../../../../testing/utils/result.dart';

void main() {
  group('BookingCreateUseCase tests', () {
    test('Create booking', () async {
      final useCase = BookingCreateUseCase(
        activityRepository: FakeActivityRepository(),
        destinationRepository: FakeDestinationRepository(),
        bookingRepository: FakeBookingRepository(),
      );

      final booking = await useCase.createFrom(
        ItineraryConfig(
          startDate: DateTime(2024, 01, 01),
          endDate: DateTime(2024, 02, 12),
          destination: kDestination1.ref,
          activities: [kActivity.ref],
        ),
      );

      expect(booking.asOk.value, kBooking);
    });
  });
}
