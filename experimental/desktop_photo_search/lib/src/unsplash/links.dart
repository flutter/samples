// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';

part 'links.g.dart';

abstract class Links implements Built<Links, LinksBuilder> {
  factory Links([void Function(LinksBuilder) updates]) = _$Links;

  Links._();

  @nullable
  @BuiltValueField(wireName: 'self')
  String get self;

  @nullable
  @BuiltValueField(wireName: 'html')
  String get html;

  @nullable
  @BuiltValueField(wireName: 'download')
  String get download;

  @nullable
  @BuiltValueField(wireName: 'download_location')
  String get downloadLocation;

  String toJson() {
    return json.encode(serializers.serializeWith(Links.serializer, this));
  }

  static Links fromJson(String jsonString) {
    return serializers.deserializeWith(
        Links.serializer, json.decode(jsonString));
  }

  static Serializer<Links> get serializer => _$linksSerializer;
}
