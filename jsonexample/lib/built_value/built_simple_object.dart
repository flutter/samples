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

  @nullable
  String get aString;

  @nullable
  int get anInt;

  @nullable
  double get aDouble;

  @nullable
  BuiltList<String> get aListOfStrings;

  @nullable
  BuiltList<int> get aListOfInts;

  @nullable
  BuiltList<double> get aListOfDoubles;

  BuiltSimpleObject._();

  factory BuiltSimpleObject([void Function(BuiltSimpleObjectBuilder) updates]) =
      _$BuiltSimpleObject;
}
