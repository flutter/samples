// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:json_annotation/json_annotation.dart';
import 'package:jsonexample/json_serializable/serializable_simple_object.dart';

part 'serializable_complex_object.g.dart';

@JsonSerializable()
class SerializableComplexObject {
  SerializableComplexObject({
    this.aString,
    this.anInt,
    this.aDouble,
    this.anObject,
    this.aListOfStrings,
    this.aListOfInts,
    this.aListOfDoubles,
    this.aListOfObjects,
  });

  final String aString;
  final int anInt;
  final double aDouble;
  final SerializableSimpleObject anObject;
  final List<String> aListOfStrings;
  final List<int> aListOfInts;
  final List<double> aListOfDoubles;
  final List<SerializableSimpleObject> aListOfObjects;

  factory SerializableComplexObject.fromJson(Map<String, dynamic> json) =>
      _$SerializableComplexObjectFromJson(json);

  Map<String, dynamic> toJson() => _$SerializableComplexObjectToJson(this);
}
