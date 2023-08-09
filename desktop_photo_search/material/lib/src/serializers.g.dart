// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(ApiError.serializer)
      ..add(CurrentUserCollections.serializer)
      ..add(Exif.serializer)
      ..add(Links.serializer)
      ..add(Location.serializer)
      ..add(Photo.serializer)
      ..add(Position.serializer)
      ..add(Search.serializer)
      ..add(SearchPhotosResponse.serializer)
      ..add(Tags.serializer)
      ..add(Urls.serializer)
      ..add(User.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Photo)]),
          () => new ListBuilder<Photo>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Photo)]),
          () => new ListBuilder<Photo>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Tags)]),
          () => new ListBuilder<Tags>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CurrentUserCollections)]),
          () => new ListBuilder<CurrentUserCollections>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
