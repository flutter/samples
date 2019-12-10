// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';

part 'urls.g.dart';

abstract class Urls implements Built<Urls, UrlsBuilder> {
  factory Urls([void Function(UrlsBuilder b) updates]) = _$Urls;

  Urls._();

  @nullable
  @BuiltValueField(wireName: 'raw')
  String get raw;

  @nullable
  @BuiltValueField(wireName: 'full')
  String get full;

  @nullable
  @BuiltValueField(wireName: 'regular')
  String get regular;

  @nullable
  @BuiltValueField(wireName: 'small')
  String get small;

  @nullable
  @BuiltValueField(wireName: 'thumb')
  String get thumb;

  String toJson() {
    return json.encode(serializers.serializeWith(Urls.serializer, this));
  }

  static Urls fromJson(String jsonString) {
    return serializers.deserializeWith(
        Urls.serializer, json.decode(jsonString));
  }

  static Serializer<Urls> get serializer => _$urlsSerializer;
}
