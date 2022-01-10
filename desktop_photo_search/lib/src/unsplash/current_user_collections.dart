// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';

part 'current_user_collections.g.dart';

abstract class CurrentUserCollections
    implements Built<CurrentUserCollections, CurrentUserCollectionsBuilder> {
  factory CurrentUserCollections(
          [void Function(CurrentUserCollectionsBuilder)? updates]) =
      _$CurrentUserCollections;

  CurrentUserCollections._();

  @BuiltValueField(wireName: 'id')
  int get id;

  @BuiltValueField(wireName: 'title')
  String? get title;

  @BuiltValueField(wireName: 'published_at')
  String? get publishedAt;

  @BuiltValueField(wireName: 'updated_at')
  String? get updatedAt;

  String toJson() {
    return json.encode(
        serializers.serializeWith(CurrentUserCollections.serializer, this));
  }

  static CurrentUserCollections? fromJson(String jsonString) {
    return serializers.deserializeWith(
        CurrentUserCollections.serializer, json.decode(jsonString));
  }

  static Serializer<CurrentUserCollections> get serializer =>
      _$currentUserCollectionsSerializer;
}
