// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_test/flutter_test.dart';
import 'package:jsonexample/built_value/built_complex_object.dart';
import 'package:jsonexample/built_value/built_value_serializers.dart';
import 'package:jsonexample/dart_convert/converted_complex_object.dart';
import 'package:jsonexample/json_serializable/serializable_complex_object.dart';

void main() {
  const Map<String, dynamic> typicalObjectJson = {
    'aString': 'Blah, blah, blah.',
    'anInt': 1,
    'aDouble': 1.0,
    'aListOfStrings': ['one', 'two', 'three'],
    'aListOfInts': [1, 2, 3],
    'aListOfDoubles': [1.0, 2.0, 3.0],
    'anObject': {
      'aString': 'Blah, blah, blah.',
      'anInt': 1,
      'aDouble': 1.0,
      'aListOfStrings': ['one', 'two', 'three'],
      'aListOfInts': [1, 2, 3],
      'aListOfDoubles': [1.0, 2.0, 3.0]
    },
    'aListOfObjects': [
      {
        'aString': 'Blah, blah, blah.',
        'anInt': 1,
        'aDouble': 1.0,
        'aListOfStrings': ['one', 'two', 'three'],
        'aListOfInts': [1, 2, 3],
        'aListOfDoubles': [1.0, 2.0, 3.0]
      },
      {
        'aString': 'Blah, blah, blah.',
        'anInt': 2,
        'aDouble': 1.0,
        'aListOfStrings': ['one', 'two', 'three'],
        'aListOfInts': [1, 2, 3],
        'aListOfDoubles': [1.0, 2.0, 3.0]
      },
      {
        'aString': 'Blah, blah, blah.',
        'anInt': 3,
        'aDouble': 1.0,
        'aListOfStrings': ['one', 'two', 'three'],
        'aListOfInts': [1, 2, 3],
        'aListOfDoubles': [1.0, 2.0, 3.0]
      }
    ]
  };

  Map<String, dynamic> emptySimpleObjectsJson = {
    'aString': 'Blah, blah, blah.',
    'anInt': 1,
    'aDouble': 1.0,
    'aListOfStrings': ['one', 'two', 'three'],
    'aListOfInts': [1, 2, 3],
    'aListOfDoubles': [1.0, 2.0, 3.0],
    'anObject': <String, dynamic>{},
    'aListOfObjects': [
      <String, dynamic>{},
      <String, dynamic>{},
      <String, dynamic>{}
    ]
  };

  const Map<String, dynamic> unexpectedPropertiesJson = {
    'aString': 'Blah, blah, blah.',
    'anInt': 1,
    'aDouble': 1.0,
    'aListOfStrings': ['one', 'two', 'three'],
    'aListOfInts': [1, 2, 3],
    'aListOfDoubles': [1.0, 2.0, 3.0],
    'unexpectedProperty': 'Whoops!',
    'anObject': {
      'aString': 'Blah, blah, blah.',
      'anInt': 1,
      'aDouble': 1.0,
      'aListOfStrings': ['one', 'two', 'three'],
      'aListOfInts': [1, 2, 3],
      'aListOfDoubles': [1.0, 2.0, 3.0],
      'unexpectedProperty': 'Whoops!'
    },
    'aListOfObjects': [
      {
        'aString': 'Blah, blah, blah.',
        'anInt': 1,
        'aDouble': 1.0,
        'aListOfStrings': ['one', 'two', 'three'],
        'aListOfInts': [1, 2, 3],
        'aListOfDoubles': [1.0, 2.0, 3.0],
        'unexpectedProperty': 'Whoops!'
      },
      {
        'aString': 'Blah, blah, blah.',
        'anInt': 2,
        'aDouble': 1.0,
        'aListOfStrings': ['one', 'two', 'three'],
        'aListOfInts': [1, 2, 3],
        'aListOfDoubles': [1.0, 2.0, 3.0],
        'unexpectedProperty': 'Whoops!'
      },
      {
        'aString': 'Blah, blah, blah.',
        'anInt': 3,
        'aDouble': 1.0,
        'aListOfStrings': ['one', 'two', 'three'],
        'aListOfInts': [1, 2, 3],
        'aListOfDoubles': [1.0, 2.0, 3.0],
        'unexpectedProperty': 'Whoops!'
      }
    ]
  };

  group('ConvertedComplexObject unit tests', () {
    test('Typical object', () {
      final complexObject = ConvertedComplexObject.fromJson(typicalObjectJson);

      expect(complexObject.aString, "Blah, blah, blah.");
      expect(complexObject.anInt, 1);
      expect(complexObject.aDouble, 1.0);
      expect(complexObject.aListOfStrings, ['one', 'two', 'three']);
      expect(complexObject.aListOfInts, [1, 2, 3]);
      expect(complexObject.aListOfDoubles, [1.0, 2.0, 3.0]);
      expect(complexObject.anObject.aString, "Blah, blah, blah.");
      expect(complexObject.anObject.anInt, 1);
      expect(complexObject.anObject.aDouble, 1.0);
      expect(complexObject.anObject.aListOfStrings, ['one', 'two', 'three']);
      expect(complexObject.anObject.aListOfInts, [1, 2, 3]);
      expect(complexObject.anObject.aListOfDoubles, [1.0, 2.0, 3.0]);
      expect(complexObject.aListOfObjects.length, 3);

      for (int i = 0; i < 3; i++) {
        expect(complexObject.aListOfObjects[i].aString, "Blah, blah, blah.");
        expect(complexObject.aListOfObjects[i].anInt, i + 1);
        expect(complexObject.aListOfObjects[i].aDouble, 1.0);
        expect(complexObject.aListOfObjects[i].aListOfStrings,
            ['one', 'two', 'three']);
        expect(complexObject.aListOfObjects[i].aListOfInts, [1, 2, 3]);
        expect(complexObject.aListOfObjects[i].aListOfDoubles, [1.0, 2.0, 3.0]);
      }
    });

    test('Empty object', () {
      final complexObject =
          ConvertedComplexObject.fromJson(<String, dynamic>{});

      expect(complexObject.aString, isNull);
      expect(complexObject.anInt, isNull);
      expect(complexObject.aDouble, isNull);
      expect(complexObject.aListOfStrings, isNull);
      expect(complexObject.aListOfInts, isNull);
      expect(complexObject.aListOfDoubles, isNull);
      expect(complexObject.anObject, isNull);
      expect(complexObject.aListOfObjects, isNull);
    });

    test('Empty simple objects', () {
      final complexObject =
          ConvertedComplexObject.fromJson(emptySimpleObjectsJson);

      expect(complexObject.aString, "Blah, blah, blah.");
      expect(complexObject.anInt, 1);
      expect(complexObject.aDouble, 1.0);
      expect(complexObject.aListOfStrings, ['one', 'two', 'three']);
      expect(complexObject.aListOfInts, [1, 2, 3]);
      expect(complexObject.aListOfDoubles, [1.0, 2.0, 3.0]);
      expect(complexObject.anObject.aString, isNull);
      expect(complexObject.anObject.anInt, isNull);
      expect(complexObject.anObject.aDouble, isNull);
      expect(complexObject.anObject.aListOfStrings, isNull);
      expect(complexObject.anObject.aListOfInts, isNull);
      expect(complexObject.anObject.aListOfDoubles, isNull);
      expect(complexObject.aListOfObjects.length, 3);

      for (int i = 0; i < 3; i++) {
        expect(complexObject.aListOfObjects[i].aString, isNull);
        expect(complexObject.aListOfObjects[i].anInt, isNull);
        expect(complexObject.aListOfObjects[i].aDouble, isNull);
        expect(complexObject.aListOfObjects[i].aListOfStrings, isNull);
        expect(complexObject.aListOfObjects[i].aListOfInts, isNull);
        expect(complexObject.aListOfObjects[i].aListOfDoubles, isNull);
      }
    });

    test('Extra properties', () {
      final complexObject =
          ConvertedComplexObject.fromJson(unexpectedPropertiesJson);

      expect(complexObject.aString, "Blah, blah, blah.");
      expect(complexObject.anInt, 1);
      expect(complexObject.aDouble, 1.0);
      expect(complexObject.aListOfStrings, ['one', 'two', 'three']);
      expect(complexObject.aListOfInts, [1, 2, 3]);
      expect(complexObject.aListOfDoubles, [1.0, 2.0, 3.0]);
      expect(complexObject.anObject.aString, "Blah, blah, blah.");
      expect(complexObject.anObject.anInt, 1);
      expect(complexObject.anObject.aDouble, 1.0);
      expect(complexObject.anObject.aListOfStrings, ['one', 'two', 'three']);
      expect(complexObject.anObject.aListOfInts, [1, 2, 3]);
      expect(complexObject.anObject.aListOfDoubles, [1.0, 2.0, 3.0]);
      expect(complexObject.aListOfObjects.length, 3);

      for (int i = 0; i < 3; i++) {
        expect(complexObject.aListOfObjects[i].aString, "Blah, blah, blah.");
        expect(complexObject.aListOfObjects[i].anInt, i + 1);
        expect(complexObject.aListOfObjects[i].aDouble, 1.0);
        expect(complexObject.aListOfObjects[i].aListOfStrings,
            ['one', 'two', 'three']);
        expect(complexObject.aListOfObjects[i].aListOfInts, [1, 2, 3]);
        expect(complexObject.aListOfObjects[i].aListOfDoubles, [1.0, 2.0, 3.0]);
      }
    });
  });

  group('SerializableComplexObject unit tests', () {
    test('Typical object', () {
      final complexObject =
          SerializableComplexObject.fromJson(typicalObjectJson);

      expect(complexObject.aString, "Blah, blah, blah.");
      expect(complexObject.anInt, 1);
      expect(complexObject.aDouble, 1.0);
      expect(complexObject.aListOfStrings, ['one', 'two', 'three']);
      expect(complexObject.aListOfInts, [1, 2, 3]);
      expect(complexObject.aListOfDoubles, [1.0, 2.0, 3.0]);
      expect(complexObject.anObject.aString, "Blah, blah, blah.");
      expect(complexObject.anObject.anInt, 1);
      expect(complexObject.anObject.aDouble, 1.0);
      expect(complexObject.anObject.aListOfStrings, ['one', 'two', 'three']);
      expect(complexObject.anObject.aListOfInts, [1, 2, 3]);
      expect(complexObject.anObject.aListOfDoubles, [1.0, 2.0, 3.0]);
      expect(complexObject.aListOfObjects.length, 3);

      for (int i = 0; i < 3; i++) {
        expect(complexObject.aListOfObjects[i].aString, "Blah, blah, blah.");
        expect(complexObject.aListOfObjects[i].anInt, i + 1);
        expect(complexObject.aListOfObjects[i].aDouble, 1.0);
        expect(complexObject.aListOfObjects[i].aListOfStrings,
            ['one', 'two', 'three']);
        expect(complexObject.aListOfObjects[i].aListOfInts, [1, 2, 3]);
        expect(complexObject.aListOfObjects[i].aListOfDoubles, [1.0, 2.0, 3.0]);
      }
    });

    test('Empty object', () {
      final complexObject =
          SerializableComplexObject.fromJson(<String, dynamic>{});

      expect(complexObject.aString, isNull);
      expect(complexObject.anInt, isNull);
      expect(complexObject.aDouble, isNull);
      expect(complexObject.aListOfStrings, isNull);
      expect(complexObject.aListOfInts, isNull);
      expect(complexObject.aListOfDoubles, isNull);
      expect(complexObject.anObject, isNull);
      expect(complexObject.aListOfObjects, isNull);
    });

    test('Empty simple objects', () {
      final complexObject =
          SerializableComplexObject.fromJson(emptySimpleObjectsJson);

      expect(complexObject.aString, "Blah, blah, blah.");
      expect(complexObject.anInt, 1);
      expect(complexObject.aDouble, 1.0);
      expect(complexObject.aListOfStrings, ['one', 'two', 'three']);
      expect(complexObject.aListOfInts, [1, 2, 3]);
      expect(complexObject.aListOfDoubles, [1.0, 2.0, 3.0]);
      expect(complexObject.anObject.aString, isNull);
      expect(complexObject.anObject.anInt, isNull);
      expect(complexObject.anObject.aDouble, isNull);
      expect(complexObject.anObject.aListOfStrings, isNull);
      expect(complexObject.anObject.aListOfInts, isNull);
      expect(complexObject.anObject.aListOfDoubles, isNull);
      expect(complexObject.aListOfObjects.length, 3);

      for (int i = 0; i < 3; i++) {
        expect(complexObject.aListOfObjects[i].aString, isNull);
        expect(complexObject.aListOfObjects[i].anInt, isNull);
        expect(complexObject.aListOfObjects[i].aDouble, isNull);
        expect(complexObject.aListOfObjects[i].aListOfStrings, isNull);
        expect(complexObject.aListOfObjects[i].aListOfInts, isNull);
        expect(complexObject.aListOfObjects[i].aListOfDoubles, isNull);
      }
    });

    test('Extra properties', () {
      final complexObject =
          SerializableComplexObject.fromJson(unexpectedPropertiesJson);

      expect(complexObject.aString, "Blah, blah, blah.");
      expect(complexObject.anInt, 1);
      expect(complexObject.aDouble, 1.0);
      expect(complexObject.aListOfStrings, ['one', 'two', 'three']);
      expect(complexObject.aListOfInts, [1, 2, 3]);
      expect(complexObject.aListOfDoubles, [1.0, 2.0, 3.0]);
      expect(complexObject.anObject.aString, "Blah, blah, blah.");
      expect(complexObject.anObject.anInt, 1);
      expect(complexObject.anObject.aDouble, 1.0);
      expect(complexObject.anObject.aListOfStrings, ['one', 'two', 'three']);
      expect(complexObject.anObject.aListOfInts, [1, 2, 3]);
      expect(complexObject.anObject.aListOfDoubles, [1.0, 2.0, 3.0]);
      expect(complexObject.aListOfObjects.length, 3);

      for (int i = 0; i < 3; i++) {
        expect(complexObject.aListOfObjects[i].aString, "Blah, blah, blah.");
        expect(complexObject.aListOfObjects[i].anInt, i + 1);
        expect(complexObject.aListOfObjects[i].aDouble, 1.0);
        expect(complexObject.aListOfObjects[i].aListOfStrings,
            ['one', 'two', 'three']);
        expect(complexObject.aListOfObjects[i].aListOfInts, [1, 2, 3]);
        expect(complexObject.aListOfObjects[i].aListOfDoubles, [1.0, 2.0, 3.0]);
      }
    });
  });

  group('BuiltComplexObject unit tests', () {
    test('Typical object', () {
      final complexObject = serializers.deserializeWith(
          BuiltComplexObject.serializer, typicalObjectJson);

      expect(complexObject.aString, "Blah, blah, blah.");
      expect(complexObject.anInt, 1);
      expect(complexObject.aDouble, 1.0);
      expect(complexObject.aListOfStrings, ['one', 'two', 'three']);
      expect(complexObject.aListOfInts, [1, 2, 3]);
      expect(complexObject.aListOfDoubles, [1.0, 2.0, 3.0]);
      expect(complexObject.anObject.aString, "Blah, blah, blah.");
      expect(complexObject.anObject.anInt, 1);
      expect(complexObject.anObject.aDouble, 1.0);
      expect(complexObject.anObject.aListOfStrings, ['one', 'two', 'three']);
      expect(complexObject.anObject.aListOfInts, [1, 2, 3]);
      expect(complexObject.anObject.aListOfDoubles, [1.0, 2.0, 3.0]);
      expect(complexObject.aListOfObjects.length, 3);

      for (int i = 0; i < 3; i++) {
        expect(complexObject.aListOfObjects[i].aString, "Blah, blah, blah.");
        expect(complexObject.aListOfObjects[i].anInt, i + 1);
        expect(complexObject.aListOfObjects[i].aDouble, 1.0);
        expect(complexObject.aListOfObjects[i].aListOfStrings,
            ['one', 'two', 'three']);
        expect(complexObject.aListOfObjects[i].aListOfInts, [1, 2, 3]);
        expect(complexObject.aListOfObjects[i].aListOfDoubles, [1.0, 2.0, 3.0]);
      }
    });

    test('Empty object', () {
      final complexObject = serializers
          .deserializeWith(BuiltComplexObject.serializer, <String, dynamic>{});

      expect(complexObject.aString, isNull);
      expect(complexObject.anInt, isNull);
      expect(complexObject.aDouble, isNull);
      expect(complexObject.anObject, isNull);
      expect(complexObject.aListOfStrings, isNull);
      expect(complexObject.aListOfInts, isNull);
      expect(complexObject.aListOfDoubles, isNull);
      expect(complexObject.aListOfObjects, isNull);
    });

    test('Empty simple objects', () {
      final complexObject = serializers.deserializeWith(
          BuiltComplexObject.serializer, emptySimpleObjectsJson);

      expect(complexObject.aString, "Blah, blah, blah.");
      expect(complexObject.anInt, 1);
      expect(complexObject.aDouble, 1.0);
      expect(complexObject.aListOfStrings, ['one', 'two', 'three']);
      expect(complexObject.aListOfInts, [1, 2, 3]);
      expect(complexObject.aListOfDoubles, [1.0, 2.0, 3.0]);
      expect(complexObject.anObject.aString, isNull);
      expect(complexObject.anObject.anInt, isNull);
      expect(complexObject.anObject.aDouble, isNull);
      expect(complexObject.anObject.aListOfStrings, isNull);
      expect(complexObject.anObject.aListOfInts, isNull);
      expect(complexObject.anObject.aListOfDoubles, isNull);
      expect(complexObject.aListOfObjects.length, 3);

      for (int i = 0; i < 3; i++) {
        expect(complexObject.aListOfObjects[i].aString, isNull);
        expect(complexObject.aListOfObjects[i].anInt, isNull);
        expect(complexObject.aListOfObjects[i].aDouble, isNull);
        expect(complexObject.aListOfObjects[i].aListOfStrings, isNull);
        expect(complexObject.aListOfObjects[i].aListOfInts, isNull);
        expect(complexObject.aListOfObjects[i].aListOfDoubles, isNull);
      }
    });

    test('Extra properties', () {
      final complexObject = serializers.deserializeWith(
          BuiltComplexObject.serializer, unexpectedPropertiesJson);

      expect(complexObject.aString, "Blah, blah, blah.");
      expect(complexObject.anInt, 1);
      expect(complexObject.aDouble, 1.0);
      expect(complexObject.aListOfStrings, ['one', 'two', 'three']);
      expect(complexObject.aListOfInts, [1, 2, 3]);
      expect(complexObject.aListOfDoubles, [1.0, 2.0, 3.0]);
      expect(complexObject.anObject.aString, "Blah, blah, blah.");
      expect(complexObject.anObject.anInt, 1);
      expect(complexObject.anObject.aDouble, 1.0);
      expect(complexObject.anObject.aListOfStrings, ['one', 'two', 'three']);
      expect(complexObject.anObject.aListOfInts, [1, 2, 3]);
      expect(complexObject.anObject.aListOfDoubles, [1.0, 2.0, 3.0]);
      expect(complexObject.aListOfObjects.length, 3);

      for (int i = 0; i < 3; i++) {
        expect(complexObject.aListOfObjects[i].aString, "Blah, blah, blah.");
        expect(complexObject.aListOfObjects[i].anInt, i + 1);
        expect(complexObject.aListOfObjects[i].aDouble, 1.0);
        expect(complexObject.aListOfObjects[i].aListOfStrings,
            ['one', 'two', 'three']);
        expect(complexObject.aListOfObjects[i].aListOfInts, [1, 2, 3]);
        expect(complexObject.aListOfObjects[i].aListOfDoubles, [1.0, 2.0, 3.0]);
      }
    });
  });
}
