// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:compass_app/data/services/api/model/booking/booking_api_model.dart';
import 'package:compass_app/domain/models/booking/booking.dart';
import 'package:compass_app/domain/models/booking/booking_summary.dart';

import 'activity.dart';
import 'destination.dart';

final kBooking = Booking(
  startDate: DateTime(2024, 01, 01),
  endDate: DateTime(2024, 02, 12),
  destination: kDestination1,
  activity: [kActivity],
);

final kBookingSummary = BookingSummary(
  id: 0,
  startDate: kBooking.startDate,
  endDate: kBooking.endDate,
  name: '${kDestination1.name}, ${kDestination1.continent}',
);

final kBookingApiModel = BookingApiModel(
  id: 0,
  startDate: kBooking.startDate,
  endDate: kBooking.endDate,
  name: '${kDestination1.name}, ${kDestination1.continent}',
  destinationRef: kDestination1.ref,
  activitiesRef: [kActivity.ref],
);
