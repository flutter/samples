// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';

part 'activity.g.dart';

enum TimeOfDay {
  any,
  morning,
  afternoon,
  evening,
  night,
}

@freezed
class Activity with _$Activity {
  const factory Activity({
    /// e.g. 'Glacier Trekking and Ice Climbing'
    required String name,

    /// e.g. 'Embark on a thrilling adventure exploring the awe-inspiring glaciers of Alaska. Hike across the icy terrain, marvel at the deep blue crevasses, and even try your hand at ice climbing for an unforgettable experience.'
    required String description,

    /// e.g. 'Matanuska Glacier or Mendenhall Glacier'
    required String locationName,

    /// Duration in days.
    /// e.g. 8
    required int duration,

    /// e.g. 'morning'
    required TimeOfDay timeOfDay,

    /// e.g. false
    required bool familyFriendly,

    /// e.g. 4
    required int price,

    /// e.g. 'alaska'
    required String destinationRef,

    /// e.g. 'glacier-trekking-and-ice-climbing'
    required String ref,

    /// e.g. 'https://storage.googleapis.com/tripedia-images/activities/alaska_glacier-trekking-and-ice-climbing.jpg'
    required String imageUrl,
  }) = _Activity;

  factory Activity.fromJson(Map<String, Object?> json) =>
      _$ActivityFromJson(json);
}
