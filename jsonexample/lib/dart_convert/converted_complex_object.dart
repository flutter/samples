// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:jsonexample/dart_convert/converted_simple_object.dart';

class ConvertedComplexObject {
  const ConvertedComplexObject({
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
  final ConvertedSimpleObject anObject;
  final List<String> aListOfStrings;
  final List<int> aListOfInts;
  final List<double> aListOfDoubles;
  final List<ConvertedSimpleObject> aListOfObjects;

  factory ConvertedComplexObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return null;

    return ConvertedComplexObject(
        aString: json['aString'] as String,
        anInt: json['anInt'] as int,
        aDouble: json['aDouble'] as double,
        anObject: json['anObject'] != null
            ? ConvertedSimpleObject.fromJson(
                json['anObject'] as Map<String, dynamic>)
            : null,
        aListOfStrings: json['aListOfStrings'] != null
            ? List<String>.from(json['aListOfStrings'] as Iterable<dynamic>)
            : null,
        aListOfInts: json['aListOfInts'] != null
            ? List<int>.from(json['aListOfInts'] as Iterable<dynamic>)
            : null,
        aListOfDoubles: json['aListOfDoubles'] != null
            ? List<double>.from(json['aListOfDoubles'] as Iterable<dynamic>)
            : null,
        aListOfObjects: json['aListOfObjects'] != null
            ? List<ConvertedSimpleObject>.from((json['aListOfObjects']
                    as Iterable<dynamic>)
                .map<dynamic>((dynamic o) =>
                    ConvertedSimpleObject.fromJson(o as Map<String, dynamic>)))
            : null);
  }
}
