// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';
import 'current_user_collections.dart';
import 'exif.dart';
import 'links.dart';
import 'location.dart';
import 'tags.dart';
import 'urls.dart';
import 'user.dart';

part 'photo.g.dart';

abstract class Photo implements Built<Photo, PhotoBuilder> {
  factory Photo([void Function(PhotoBuilder) updates]) = _$Photo;

  Photo._();

  @BuiltValueField(wireName: 'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  String get createdAt;

  @nullable
  @BuiltValueField(wireName: 'updated_at')
  String get updatedAt;

  @nullable
  @BuiltValueField(wireName: 'width')
  int get width;

  @nullable
  @BuiltValueField(wireName: 'height')
  int get height;

  @nullable
  @BuiltValueField(wireName: 'color')
  String get color;

  @nullable
  @BuiltValueField(wireName: 'downloads')
  int get downloads;

  @nullable
  @BuiltValueField(wireName: 'likes')
  int get likes;

  @nullable
  @BuiltValueField(wireName: 'liked_by_user')
  bool get likedByUser;

  @nullable
  @BuiltValueField(wireName: 'description')
  String get description;

  @nullable
  @BuiltValueField(wireName: 'exif')
  Exif get exif;

  @nullable
  @BuiltValueField(wireName: 'location')
  Location get location;

  @nullable
  @BuiltValueField(wireName: 'tags')
  BuiltList<Tags> get tags;

  @nullable
  @BuiltValueField(wireName: 'current_user_collections')
  BuiltList<CurrentUserCollections> get currentUserCollections;

  @nullable
  @BuiltValueField(wireName: 'urls')
  Urls get urls;

  @nullable
  @BuiltValueField(wireName: 'links')
  Links get links;

  @nullable
  @BuiltValueField(wireName: 'user')
  User get user;

  String toJson() {
    return json.encode(serializers.serializeWith(Photo.serializer, this));
  }

  static Photo fromJson(String jsonString) {
    return serializers.deserializeWith(
        Photo.serializer, json.decode(jsonString));
  }

  static Serializer<Photo> get serializer => _$photoSerializer;
}
