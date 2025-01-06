// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/domain/models/booking/booking.dart';
import 'package:compass_app/domain/use_cases/booking/booking_share_use_case.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../testing/models/activity.dart';
import '../../../../testing/models/destination.dart';

void main() {
  group('BookingShareUseCase tests', () {
    test('Share booking', () async {
      String? sharedText;
      final useCase = BookingShareUseCase.custom((text) async {
        sharedText = text;
      });
      final booking = Booking(
        startDate: DateTime(2024, 01, 01),
        endDate: DateTime(2024, 02, 12),
        destination: kDestination1,
        activity: [kActivity],
      );
      await useCase.shareBooking(booking);
      expect(
        sharedText,
        'Trip to name1\n'
        'on 1 Jan - 12 Feb\n'
        'Activities:\n'
        ' - NAME.',
      );
    });
  });
}
