// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';
import 'links.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  factory User([void Function(UserBuilder) updates]) = _$User;

  User._();

  @BuiltValueField(wireName: 'id')
  String get id;

  @nullable
  @BuiltValueField(wireName: 'updated_at')
  String get updatedAt;

  @BuiltValueField(wireName: 'username')
  String get username;

  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'portfolio_url')
  String get portfolioUrl;

  @nullable
  @BuiltValueField(wireName: 'bio')
  String get bio;

  @nullable
  @BuiltValueField(wireName: 'location')
  String get location;

  @nullable
  @BuiltValueField(wireName: 'total_likes')
  int get totalLikes;

  @nullable
  @BuiltValueField(wireName: 'total_photos')
  int get totalPhotos;

  @nullable
  @BuiltValueField(wireName: 'total_collections')
  int get totalCollections;

  @nullable
  @BuiltValueField(wireName: 'links')
  Links get links;

  String toJson() {
    return json.encode(serializers.serializeWith(User.serializer, this));
  }

  static User fromJson(String jsonString) {
    return serializers.deserializeWith(
        User.serializer, json.decode(jsonString));
  }

  static Serializer<User> get serializer => _$userSerializer;
}
