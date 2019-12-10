// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';
import 'photo.dart';

part 'search_photos_response.g.dart';

abstract class SearchPhotosResponse
    implements Built<SearchPhotosResponse, SearchPhotosResponseBuilder> {
  factory SearchPhotosResponse(
          [void Function(SearchPhotosResponseBuilder) updates]) =
      _$SearchPhotosResponse;

  SearchPhotosResponse._();

  @nullable
  @BuiltValueField(wireName: 'total')
  int get total;

  @nullable
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;

  @BuiltValueField(wireName: 'results')
  BuiltList<Photo> get results;

  String toJson() {
    return json.encode(
        serializers.serializeWith(SearchPhotosResponse.serializer, this));
  }

  static SearchPhotosResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        SearchPhotosResponse.serializer, json.decode(jsonString));
  }

  static Serializer<SearchPhotosResponse> get serializer =>
      _$searchPhotosResponseSerializer;
}
