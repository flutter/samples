// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_test/flutter_test.dart';
import 'package:jsonexample/built_value/built_simple_object.dart';
import 'package:jsonexample/built_value/built_value_serializers.dart';
import 'package:jsonexample/dart_convert/converted_simple_object.dart';
import 'package:jsonexample/json_serializable/serializable_simple_object.dart';

void main() {
  const Map<String, dynamic> typicalObjectJson = {
    'aString': 'Blah, blah, blah.',
    'anInt': 1,
    'aDouble': 1.0,
    'aListOfStrings': ['one', 'two', 'three'],
    'aListOfInts': [1, 2, 3],
    'aListOfDoubles': [1.0, 2.0, 3.0]
  };

  const Map<String, dynamic> emptyListJson = {
    'aString': 'Blah, blah, blah.',
    'anInt': 1,
    'aDouble': 1.0,
    'aListOfStrings': [],
    'aListOfInts': [],
    'aListOfDoubles': []
  };

  const Map<String, dynamic> unexpectedPropertyjson = {
    'aString': 'Blah, blah, blah.',
    'anInt': 1,
    'aDouble': 1.0,
    'aListOfStrings': ['one', 'two', 'three'],
    'aListOfInts': [1, 2, 3],
    'aListOfDoubles': [1.0, 2.0, 3.0],
    'unexpectedProperty': 'Whoops!'
  };

  group('ConvertedSimpleObject unit tests', () {
    test('Typical object', () {
      final simpleObject = ConvertedSimpleObject.fromJson(typicalObjectJson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, "Blah, blah, blah.");
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, ['one', 'two', 'three']);
      expect(simpleObject.aListOfInts, [1, 2, 3]);
      expect(simpleObject.aListOfDoubles, [1.0, 2.0, 3.0]);
    });

    test('Empty object', () {
      final simpleObject = ConvertedSimpleObject.fromJson(<String, dynamic>{});

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, isNull);
      expect(simpleObject.anInt, isNull);
      expect(simpleObject.aDouble, isNull);
      expect(simpleObject.aListOfStrings, isNull);
      expect(simpleObject.aListOfInts, isNull);
      expect(simpleObject.aListOfDoubles, isNull);
    });

    test('Empty lists', () {
      final simpleObject = ConvertedSimpleObject.fromJson(emptyListJson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, "Blah, blah, blah.");
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, []);
      expect(simpleObject.aListOfInts, []);
      expect(simpleObject.aListOfDoubles, []);
    });

    test('Extra properties', () {
      final simpleObject =
          ConvertedSimpleObject.fromJson(unexpectedPropertyjson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, "Blah, blah, blah.");
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, ['one', 'two', 'three']);
      expect(simpleObject.aListOfInts, [1, 2, 3]);
      expect(simpleObject.aListOfDoubles, [1.0, 2.0, 3.0]);
    });
  });

  group('SerializableSimpleObject unit tests', () {
    test('Typical object', () {
      final simpleObject = SerializableSimpleObject.fromJson(typicalObjectJson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, "Blah, blah, blah.");
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, ['one', 'two', 'three']);
      expect(simpleObject.aListOfInts, [1, 2, 3]);
      expect(simpleObject.aListOfDoubles, [1.0, 2.0, 3.0]);
    });

    test('Empty object', () {
      final simpleObject =
          SerializableSimpleObject.fromJson(<String, dynamic>{});

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, isNull);
      expect(simpleObject.anInt, isNull);
      expect(simpleObject.aDouble, isNull);
      expect(simpleObject.aListOfStrings, isNull);
      expect(simpleObject.aListOfInts, isNull);
      expect(simpleObject.aListOfDoubles, isNull);
    });

    test('Empty lists', () {
      final simpleObject = SerializableSimpleObject.fromJson(emptyListJson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, "Blah, blah, blah.");
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, []);
      expect(simpleObject.aListOfInts, []);
      expect(simpleObject.aListOfDoubles, []);
    });

    test('Extra properties', () {
      final simpleObject =
          SerializableSimpleObject.fromJson(unexpectedPropertyjson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, "Blah, blah, blah.");
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, ['one', 'two', 'three']);
      expect(simpleObject.aListOfInts, [1, 2, 3]);
      expect(simpleObject.aListOfDoubles, [1.0, 2.0, 3.0]);
    });
  });

  group('BuiltSimpleObject unit tests', () {
    test('Typical object', () {
      final simpleObject = serializers.deserializeWith(
          BuiltSimpleObject.serializer, typicalObjectJson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, "Blah, blah, blah.");
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, ['one', 'two', 'three']);
      expect(simpleObject.aListOfInts, [1, 2, 3]);
      expect(simpleObject.aListOfDoubles, [1.0, 2.0, 3.0]);
    });

    test('Empty object', () {
      final simpleObject = serializers
          .deserializeWith(BuiltSimpleObject.serializer, <String, dynamic>{});

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, isNull);
      expect(simpleObject.anInt, isNull);
      expect(simpleObject.aDouble, isNull);
      expect(simpleObject.aListOfStrings, isNull);
      expect(simpleObject.aListOfInts, isNull);
      expect(simpleObject.aListOfDoubles, isNull);
    });

    test('Empty lists', () {
      final simpleObject = serializers.deserializeWith(
          BuiltSimpleObject.serializer, emptyListJson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, "Blah, blah, blah.");
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, []);
      expect(simpleObject.aListOfInts, []);
      expect(simpleObject.aListOfDoubles, []);
    });

    test('Extra properties', () {
      final simpleObject = serializers.deserializeWith(
          BuiltSimpleObject.serializer, unexpectedPropertyjson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, "Blah, blah, blah.");
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, ['one', 'two', 'three']);
      expect(simpleObject.aListOfInts, [1, 2, 3]);
      expect(simpleObject.aListOfDoubles, [1.0, 2.0, 3.0]);
    });
  });
}
