// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:jsonexample/built_value/built_simple_object.dart';

part 'built_complex_object.g.dart';

abstract class BuiltComplexObject
    implements Built<BuiltComplexObject, BuiltComplexObjectBuilder> {
  static Serializer<BuiltComplexObject> get serializer =>
      _$builtComplexObjectSerializer;

  @nullable
  String get aString;

  @nullable
  int get anInt;

  @nullable
  double get aDouble;

  @nullable
  BuiltSimpleObject get anObject;

  @nullable
  BuiltList<String> get aListOfStrings;

  @nullable
  BuiltList<int> get aListOfInts;

  @nullable
  BuiltList<double> get aListOfDoubles;

  @nullable
  BuiltList<BuiltSimpleObject> get aListOfObjects;

  BuiltComplexObject._();

  factory BuiltComplexObject(
          [void Function(BuiltComplexObjectBuilder) updates]) =
      _$BuiltComplexObject;
}
