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
        aString: json['aString'],
        anInt: json['anInt'],
        aDouble: json['aDouble'],
        anObject: json['anObject'] != null
            ? ConvertedSimpleObject.fromJson(json['anObject'])
            : null,
        aListOfStrings: json['aListOfStrings'] != null
            ? List<String>.from(json['aListOfStrings'])
            : null,
        aListOfInts: json['aListOfInts'] != null
            ? List<int>.from(json['aListOfInts'])
            : null,
        aListOfDoubles: json['aListOfDoubles'] != null
            ? List<double>.from(json['aListOfDoubles'])
            : null,
        aListOfObjects: json['aListOfObjects'] != null
            ? List<ConvertedSimpleObject>.from(json['aListOfObjects']
                .map((o) => ConvertedSimpleObject.fromJson(o)))
            : null);
  }
}
