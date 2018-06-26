// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializable_complex_object.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

SerializableComplexObject _$SerializableComplexObjectFromJson(
        Map<String, dynamic> json) =>
    new SerializableComplexObject(
        aString: json['aString'] as String,
        anInt: json['anInt'] as int,
        aDouble: (json['aDouble'] as num)?.toDouble(),
        anObject: json['anObject'] == null
            ? null
            : new SerializableSimpleObject.fromJson(
                json['anObject'] as Map<String, dynamic>),
        aListOfStrings:
            (json['aListOfStrings'] as List)?.map((e) => e as String)?.toList(),
        aListOfInts:
            (json['aListOfInts'] as List)?.map((e) => e as int)?.toList(),
        aListOfDoubles: (json['aListOfDoubles'] as List)
            ?.map((e) => (e as num)?.toDouble())
            ?.toList(),
        aListOfObjects: (json['aListOfObjects'] as List)
            ?.map((e) => e == null
                ? null
                : new SerializableSimpleObject.fromJson(
                    e as Map<String, dynamic>))
            ?.toList());

abstract class _$SerializableComplexObjectSerializerMixin {
  String get aString;
  int get anInt;
  double get aDouble;
  SerializableSimpleObject get anObject;
  List<String> get aListOfStrings;
  List<int> get aListOfInts;
  List<double> get aListOfDoubles;
  List<SerializableSimpleObject> get aListOfObjects;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'aString': aString,
        'anInt': anInt,
        'aDouble': aDouble,
        'anObject': anObject,
        'aListOfStrings': aListOfStrings,
        'aListOfInts': aListOfInts,
        'aListOfDoubles': aListOfDoubles,
        'aListOfObjects': aListOfObjects
      };
}
