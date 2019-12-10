// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';

part 'tags.g.dart';

abstract class Tags implements Built<Tags, TagsBuilder> {
  factory Tags([void Function(TagsBuilder) updates]) = _$Tags;

  Tags._();

  @BuiltValueField(wireName: 'title')
  String get title;

  String toJson() {
    return json.encode(serializers.serializeWith(Tags.serializer, this));
  }

  static Tags fromJson(String jsonString) {
    return serializers.deserializeWith(
        Tags.serializer, json.decode(jsonString));
  }

  static Serializer<Tags> get serializer => _$tagsSerializer;
}
