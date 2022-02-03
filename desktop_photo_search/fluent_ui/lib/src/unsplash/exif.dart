// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';

part 'exif.g.dart';

abstract class Exif implements Built<Exif, ExifBuilder> {
  factory Exif([void Function(ExifBuilder)? updates]) = _$Exif;

  Exif._();

  @BuiltValueField(wireName: 'make')
  String? get make;

  @BuiltValueField(wireName: 'model')
  String? get model;

  @BuiltValueField(wireName: 'exposure_time')
  String? get exposureTime;

  @BuiltValueField(wireName: 'aperture')
  String? get aperture;

  @BuiltValueField(wireName: 'focal_length')
  String? get focalLength;

  @BuiltValueField(wireName: 'iso')
  int? get iso;

  String toJson() {
    return json.encode(serializers.serializeWith(Exif.serializer, this));
  }

  static Exif? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Exif.serializer, json.decode(jsonString));
  }

  static Serializer<Exif> get serializer => _$exifSerializer;
}
