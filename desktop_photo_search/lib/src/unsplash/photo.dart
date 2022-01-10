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
  factory Photo([void Function(PhotoBuilder)? updates]) = _$Photo;

  Photo._();

  @BuiltValueField(wireName: 'id')
  String get id;

  @BuiltValueField(wireName: 'created_at')
  String? get createdAt;

  @BuiltValueField(wireName: 'updated_at')
  String? get updatedAt;

  @BuiltValueField(wireName: 'width')
  int? get width;

  @BuiltValueField(wireName: 'height')
  int? get height;

  @BuiltValueField(wireName: 'color')
  String? get color;

  @BuiltValueField(wireName: 'downloads')
  int? get downloads;

  @BuiltValueField(wireName: 'likes')
  int? get likes;

  @BuiltValueField(wireName: 'liked_by_user')
  bool? get likedByUser;

  @BuiltValueField(wireName: 'description')
  String? get description;

  @BuiltValueField(wireName: 'exif')
  Exif? get exif;

  @BuiltValueField(wireName: 'location')
  Location? get location;

  @BuiltValueField(wireName: 'tags')
  BuiltList<Tags>? get tags;

  @BuiltValueField(wireName: 'current_user_collections')
  BuiltList<CurrentUserCollections>? get currentUserCollections;

  @BuiltValueField(wireName: 'urls')
  Urls? get urls;

  @BuiltValueField(wireName: 'links')
  Links? get links;

  @BuiltValueField(wireName: 'user')
  User? get user;

  String toJson() {
    return json.encode(serializers.serializeWith(Photo.serializer, this));
  }

  static Photo? fromJson(String jsonString) {
    return serializers.deserializeWith(
        Photo.serializer, json.decode(jsonString));
  }

  static Serializer<Photo> get serializer => _$photoSerializer;
}
