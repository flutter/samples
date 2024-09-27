// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_api_model.freezed.dart';
part 'booking_api_model.g.dart';

@freezed
class BookingApiModel with _$BookingApiModel {
  const factory BookingApiModel({
    /// Booking ID. Generated when stored in server.
    int? id,

    /// Start date of the trip
    required DateTime startDate,

    /// End date of the trip
    required DateTime endDate,

    /// Booking name
    /// Should be "Destination, Continent"
    required String name,

    /// Destination of the trip
    required String destinationRef,

    /// List of chosen activities
    required List<String> activitiesRef,
  }) = _BookingApiModel;

  factory BookingApiModel.fromJson(Map<String, Object?> json) =>
      _$BookingApiModelFromJson(json);
}
