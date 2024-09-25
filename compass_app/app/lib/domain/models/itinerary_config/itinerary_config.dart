// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'itinerary_config.freezed.dart';

part 'itinerary_config.g.dart';

@freezed
class ItineraryConfig with _$ItineraryConfig {
  const factory ItineraryConfig({
    /// [Continent] name
    String? continent,

    /// Start date (check in) of itinerary
    DateTime? startDate,

    /// End date (check out) of itinerary
    DateTime? endDate,

    /// Number of guests
    int? guests,

    /// Selected [Destination] reference
    String? destination,

    /// Selected [Activity] references
    @Default([]) List<String> activities,
  }) = _ItineraryConfig;

  factory ItineraryConfig.fromJson(Map<String, Object?> json) =>
      _$ItineraryConfigFromJson(json);
}
