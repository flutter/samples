// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: strong_mode_implicit_dynamic_list_literal

import 'package:flutter_test/flutter_test.dart';
import 'package:jsonexample/built_value/built_simple_object.dart';
import 'package:jsonexample/built_value/built_value_serializers.dart';
import 'package:jsonexample/dart_convert/converted_simple_object.dart';
import 'package:jsonexample/json_serializable/serializable_simple_object.dart';

void main() {
  const typicalObjectJson = <String, dynamic>{
    'aString': 'Blah, blah, blah.',
    'anInt': 1,
    'aDouble': 1.0,
    'aListOfStrings': ['one', 'two', 'three'],
    'aListOfInts': [1, 2, 3],
    'aListOfDoubles': [1.0, 2.0, 3.0]
  };

  const emptyListJson = <String, dynamic>{
    'aString': 'Blah, blah, blah.',
    'anInt': 1,
    'aDouble': 1.0,
    'aListOfStrings': <String>[],
    'aListOfInts': <int>[],
    'aListOfDoubles': <double>[]
  };

  const unexpectedPropertiesJson = <String, dynamic>{
    'aString': 'Blah, blah, blah.',
    'anInt': 1,
    'aDouble': 1.0,
    'aListOfStrings': ['one', 'two', 'three'],
    'aListOfInts': [1, 2, 3],
    'aListOfDoubles': [1.0, 2.0, 3.0],
    'unexpectedProperty': 'Whoops!'
  };

  const emptyJson = <String, dynamic>{};

  group('ConvertedSimpleObject unit tests', () {
    test('Typical object is converted correctly', () {
      final simpleObject = ConvertedSimpleObject.fromJson(typicalObjectJson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, 'Blah, blah, blah.');
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, ['one', 'two', 'three']);
      expect(simpleObject.aListOfInts, [1, 2, 3]);
      expect(simpleObject.aListOfDoubles, [1.0, 2.0, 3.0]);
    });

    test('Empty object', () {
      final simpleObject = ConvertedSimpleObject.fromJson(emptyJson);

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
      expect(simpleObject.aString, 'Blah, blah, blah.');
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, <String>[]);
      expect(simpleObject.aListOfInts, <int>[]);
      expect(simpleObject.aListOfDoubles, <double>[]);
    });

    test('Extra properties', () {
      final simpleObject =
          ConvertedSimpleObject.fromJson(unexpectedPropertiesJson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, 'Blah, blah, blah.');
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, ['one', 'two', 'three']);
      expect(simpleObject.aListOfInts, [1, 2, 3]);
      expect(simpleObject.aListOfDoubles, [1.0, 2.0, 3.0]);
    });
  });

  group('SerializableSimpleObject unit tests', () {
    test('Typical object is converted correctly', () {
      final simpleObject = SerializableSimpleObject.fromJson(typicalObjectJson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, 'Blah, blah, blah.');
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, ['one', 'two', 'three']);
      expect(simpleObject.aListOfInts, [1, 2, 3]);
      expect(simpleObject.aListOfDoubles, [1.0, 2.0, 3.0]);
    });

    test('Empty object results in null fields', () {
      final simpleObject = SerializableSimpleObject.fromJson(emptyJson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, isNull);
      expect(simpleObject.anInt, isNull);
      expect(simpleObject.aDouble, isNull);
      expect(simpleObject.aListOfStrings, isNull);
      expect(simpleObject.aListOfInts, isNull);
      expect(simpleObject.aListOfDoubles, isNull);
    });

    test('Empty lists are converted as empty lists', () {
      final simpleObject = SerializableSimpleObject.fromJson(emptyListJson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, 'Blah, blah, blah.');
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, <String>[]);
      expect(simpleObject.aListOfInts, <int>[]);
      expect(simpleObject.aListOfDoubles, <double>[]);
    });

    test('Unexpected properties are ignored', () {
      final simpleObject =
          SerializableSimpleObject.fromJson(unexpectedPropertiesJson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, 'Blah, blah, blah.');
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, ['one', 'two', 'three']);
      expect(simpleObject.aListOfInts, [1, 2, 3]);
      expect(simpleObject.aListOfDoubles, [1.0, 2.0, 3.0]);
    });
  });

  group('BuiltSimpleObject unit tests', () {
    test('Typical object is converted correctly', () {
      final simpleObject = serializers.deserializeWith(
          BuiltSimpleObject.serializer, typicalObjectJson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, 'Blah, blah, blah.');
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, ['one', 'two', 'three']);
      expect(simpleObject.aListOfInts, [1, 2, 3]);
      expect(simpleObject.aListOfDoubles, [1.0, 2.0, 3.0]);
    });

    test('Empty object results in null fields', () {
      final simpleObject =
          serializers.deserializeWith(BuiltSimpleObject.serializer, emptyJson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, isNull);
      expect(simpleObject.anInt, isNull);
      expect(simpleObject.aDouble, isNull);
      expect(simpleObject.aListOfStrings, isNull);
      expect(simpleObject.aListOfInts, isNull);
      expect(simpleObject.aListOfDoubles, isNull);
    });

    test('Empty lists are converted as empty lists', () {
      final simpleObject = serializers.deserializeWith(
          BuiltSimpleObject.serializer, emptyListJson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, 'Blah, blah, blah.');
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, <String>[]);
      expect(simpleObject.aListOfInts, <int>[]);
      expect(simpleObject.aListOfDoubles, <double>[]);
    });

    test('Unexpected properties are ignored', () {
      final simpleObject = serializers.deserializeWith(
          BuiltSimpleObject.serializer, unexpectedPropertiesJson);

      expect(simpleObject, isNotNull);
      expect(simpleObject.aString, 'Blah, blah, blah.');
      expect(simpleObject.anInt, 1);
      expect(simpleObject.aDouble, 1.0);
      expect(simpleObject.aListOfStrings, ['one', 'two', 'three']);
      expect(simpleObject.aListOfInts, [1, 2, 3]);
      expect(simpleObject.aListOfDoubles, [1.0, 2.0, 3.0]);
    });
  });
}
