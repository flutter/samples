// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializable_simple_object.dart';

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

SerializableSimpleObject _$SerializableSimpleObjectFromJson(
        Map<String, dynamic> json) =>
    new SerializableSimpleObject(
        aString: json['aString'] as String,
        anInt: json['anInt'] as int,
        aDouble: (json['aDouble'] as num)?.toDouble(),
        aListOfStrings:
            (json['aListOfStrings'] as List)?.map((e) => e as String)?.toList(),
        aListOfInts:
            (json['aListOfInts'] as List)?.map((e) => e as int)?.toList(),
        aListOfDoubles: (json['aListOfDoubles'] as List)
            ?.map((e) => (e as num)?.toDouble())
            ?.toList());

abstract class _$SerializableSimpleObjectSerializerMixin {
  String get aString;
  int get anInt;
  double get aDouble;
  List<String> get aListOfStrings;
  List<int> get aListOfInts;
  List<double> get aListOfDoubles;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'aString': aString,
        'anInt': anInt,
        'aDouble': aDouble,
        'aListOfStrings': aListOfStrings,
        'aListOfInts': aListOfInts,
        'aListOfDoubles': aListOfDoubles
      };
}
