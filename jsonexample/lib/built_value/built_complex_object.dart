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

  String? get aString;

  int? get anInt;

  double? get aDouble;

  BuiltSimpleObject? get anObject;

  BuiltList<String>? get aListOfStrings;

  BuiltList<int>? get aListOfInts;

  BuiltList<double>? get aListOfDoubles;

  BuiltList<BuiltSimpleObject>? get aListOfObjects;

  BuiltComplexObject._();

  factory BuiltComplexObject(
          [void Function(BuiltComplexObjectBuilder) updates]) =
      _$BuiltComplexObject;
}
