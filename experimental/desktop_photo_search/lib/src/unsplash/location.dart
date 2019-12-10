// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';
import 'position.dart';

part 'location.g.dart';

abstract class Location implements Built<Location, LocationBuilder> {
  factory Location([void Function(LocationBuilder) updates]) = _$Location;

  Location._();

  @nullable
  @BuiltValueField(wireName: 'city')
  String get city;

  @nullable
  @BuiltValueField(wireName: 'country')
  String get country;

  @nullable
  @BuiltValueField(wireName: 'position')
  Position get position;

  String toJson() {
    return json.encode(serializers.serializeWith(Location.serializer, this));
  }

  static Location fromJson(String jsonString) {
    return serializers.deserializeWith(
        Location.serializer, json.decode(jsonString));
  }

  static Serializer<Location> get serializer => _$locationSerializer;
}
