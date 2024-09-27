// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination.freezed.dart';

part 'destination.g.dart';

@freezed
class Destination with _$Destination {
  const factory Destination({
    /// e.g. 'alaska'
    required String ref,

    /// e.g. 'Alaska'
    required String name,

    /// e.g. 'United States'
    required String country,

    /// e.g. 'North America'
    required String continent,

    /// e.g. 'Alaska is a haven for outdoor enthusiasts ...'
    required String knownFor,

    /// e.g. ['Mountain', 'Off-the-beaten-path', 'Wildlife watching']
    required List<String> tags,

    /// e.g. 'https://storage.googleapis.com/tripedia-images/destinations/alaska.jpg'
    required String imageUrl,
  }) = _Destination;

  factory Destination.fromJson(Map<String, Object?> json) =>
      _$DestinationFromJson(json);
}
