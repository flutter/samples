// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';

part 'exif.g.dart';

abstract class Exif implements Built<Exif, ExifBuilder> {
  factory Exif([void Function(ExifBuilder) updates]) = _$Exif;

  Exif._();

  @nullable
  @BuiltValueField(wireName: 'make')
  String get make;

  @nullable
  @BuiltValueField(wireName: 'model')
  String get model;

  @nullable
  @BuiltValueField(wireName: 'exposure_time')
  String get exposureTime;

  @nullable
  @BuiltValueField(wireName: 'aperture')
  String get aperture;

  @nullable
  @BuiltValueField(wireName: 'focal_length')
  String get focalLength;

  @nullable
  @BuiltValueField(wireName: 'iso')
  int get iso;

  String toJson() {
    return json.encode(serializers.serializeWith(Exif.serializer, this));
  }

  static Exif fromJson(String jsonString) {
    return serializers.deserializeWith(
        Exif.serializer, json.decode(jsonString));
  }

  static Serializer<Exif> get serializer => _$exifSerializer;
}
