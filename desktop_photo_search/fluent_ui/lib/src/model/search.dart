// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';
import '../unsplash/photo.dart';

part 'search.g.dart';

abstract class Search implements Built<Search, SearchBuilder> {
  factory Search([void Function(SearchBuilder)? updates]) = _$Search;
  Search._();

  @BuiltValueField(wireName: 'query')
  String get query;

  @BuiltValueField(wireName: 'results')
  BuiltList<Photo> get results;

  String toJson() {
    return json.encode(serializers.serializeWith(Search.serializer, this));
  }

  static Search? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Search.serializer, json.decode(jsonString));
  }

  static Serializer<Search> get serializer => _$searchSerializer;
}
