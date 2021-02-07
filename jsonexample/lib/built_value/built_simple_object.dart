// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'built_simple_object.g.dart';

abstract class BuiltSimpleObject
    implements Built<BuiltSimpleObject, BuiltSimpleObjectBuilder> {
  static Serializer<BuiltSimpleObject> get serializer =>
      _$builtSimpleObjectSerializer;

  String? get aString;

  int? get anInt;

  double? get aDouble;

  BuiltList<String>? get aListOfStrings;

  BuiltList<int>? get aListOfInts;

  BuiltList<double>? get aListOfDoubles;

  BuiltSimpleObject._();

  factory BuiltSimpleObject([void Function(BuiltSimpleObjectBuilder) updates]) =
      _$BuiltSimpleObject;
}
