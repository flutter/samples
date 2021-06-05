// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';

part 'position.g.dart';

abstract class Position implements Built<Position, PositionBuilder> {
  factory Position([void Function(PositionBuilder)? updates]) = _$Position;

  Position._();

  @BuiltValueField(wireName: 'latitude')
  double get latitude;

  @BuiltValueField(wireName: 'longitude')
  double get longitude;

  String toJson() {
    return json.encode(serializers.serializeWith(Position.serializer, this));
  }

  static Position? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Position.serializer, json.decode(jsonString));
  }

  static Serializer<Position> get serializer => _$positionSerializer;
}
