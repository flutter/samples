// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'model/search.dart';
import 'unsplash/api_error.dart';
import 'unsplash/current_user_collections.dart';
import 'unsplash/exif.dart';
import 'unsplash/links.dart';
import 'unsplash/location.dart';
import 'unsplash/photo.dart';
import 'unsplash/position.dart';
import 'unsplash/search_photos_response.dart';
import 'unsplash/tags.dart';
import 'unsplash/urls.dart';
import 'unsplash/user.dart';

part 'serializers.g.dart';

//add all of the built value types that require serialization
@SerializersFor([Search, ApiError, Photo, SearchPhotosResponse])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
