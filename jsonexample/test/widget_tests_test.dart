// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jsonexample/dart_convert/converted_simple_object.dart';
import 'package:jsonexample/dart_convert/converted_complex_object.dart';
import 'package:jsonexample/widgets.dart';

void main() {
  group('SimpleObjectView widget test', () {
    testWidgets('Typical object is displayed correctly', (tester) async {
      final simpleObject = ConvertedSimpleObject(
        aString: 'Blah, blah, blah',
        anInt: 1,
        aDouble: 1.0,
        aListOfStrings: ['one', 'two', 'three'],
        aListOfInts: [1, 2, 3],
        aListOfDoubles: [1.0, 2.0, 3.0],
      );

      await tester.pumpWidget(
        MaterialApp(
          home: SimpleObjectView(simpleObject),
        ),
      );

      expect(find.text('"Blah, blah, blah"'), findsOneWidget);
      expect(find.text('1'), findsOneWidget);
      expect(find.text('1.0'), findsOneWidget);
      expect(find.text('["one", "two", "three"]'), findsOneWidget);
      expect(find.text('[1, 2, 3]'), findsOneWidget);
      expect(find.text('[1.0, 2.0, 3.0]'), findsOneWidget);
    });

    testWidgets('Empty lists are displayed as brackets', (tester) async {
      final simpleObject = ConvertedSimpleObject(
        aString: 'Blah, blah, blah',
        anInt: 1,
        aDouble: 1.0,
        aListOfStrings: [],
        aListOfInts: [],
        aListOfDoubles: [],
      );

      await tester.pumpWidget(
        MaterialApp(
          home: SimpleObjectView(simpleObject),
        ),
      );

      expect(find.text('[]'), findsNWidgets(3));
    });

    testWidgets('Null values are displayed as NULL', (tester) async {
      final simpleObject = ConvertedSimpleObject(
        aString: null,
        anInt: null,
        aDouble: null,
        aListOfStrings: null,
        aListOfInts: null,
        aListOfDoubles: null,
      );

      await tester.pumpWidget(
        MaterialApp(
          home: SimpleObjectView(simpleObject),
        ),
      );

      expect(find.text('NULL'), findsNWidgets(6));
    });
  });

  group('ComplexObjectView widget test', () {
    testWidgets('Typical object is displayed correctly', (tester) async {
      final complexObject = ConvertedComplexObject(
        aString: 'Blah, blah, blah',
        anInt: 1,
        aDouble: 1.0,
        aListOfStrings: ['one', 'two', 'three'],
        aListOfInts: [1, 2, 3],
        aListOfDoubles: [1.0, 2.0, 3.0],
        anObject: ConvertedSimpleObject(
          aString: 'Child 1',
          anInt: 101,
          aDouble: 101.0,
          aListOfStrings: ['1011', '1012', '1013'],
          aListOfInts: [1011, 1012, 1013],
          aListOfDoubles: [1011.0, 1012.0, 1013.0],
        ),
        aListOfObjects: [
          ConvertedSimpleObject(
            aString: 'Child 2',
            anInt: 102,
            aDouble: 102.0,
            aListOfStrings: ['1021', '1022', '1023'],
            aListOfInts: [1021, 1022, 1023],
            aListOfDoubles: [1021.0, 1022.0, 1023.0],
          ),
          ConvertedSimpleObject(
            aString: 'Child 3',
            anInt: 103,
            aDouble: 103.0,
            aListOfStrings: ['1031', '1032', '1033'],
            aListOfInts: [1031, 1032, 1033],
            aListOfDoubles: [1031.0, 1032.0, 1033.0],
          ),
          ConvertedSimpleObject(
            aString: 'Child 4',
            anInt: 104,
            aDouble: 104.0,
            aListOfStrings: ['1041', '1042', '1043'],
            aListOfInts: [1041, 1042, 1043],
            aListOfDoubles: [1041.0, 1042.0, 1043.0],
          ),
        ],
      );

      await tester.pumpWidget(
        MaterialApp(
          home: ComplexObjectView(complexObject),
        ),
      );

      expect(find.text('"Blah, blah, blah"'), findsOneWidget);
      expect(find.text('1'), findsOneWidget);
      expect(find.text('1.0'), findsOneWidget);
      expect(find.text('["one", "two", "three"]'), findsOneWidget);
      expect(find.text('[1, 2, 3]'), findsOneWidget);
      expect(find.text('[1.0, 2.0, 3.0]'), findsOneWidget);

      for (var i = 1; i <= 4; i++) {
        expect(find.text('"Child $i"'), findsOneWidget);
        expect(find.text('10$i'), findsOneWidget);
        expect(find.text('10$i.0'), findsOneWidget);
        expect(find.text('["10${i}1", "10${i}2", "10${i}3"]'), findsOneWidget);
        expect(find.text('[10${i}1, 10${i}2, 10${i}3]'), findsOneWidget);
        expect(find.text('[10${i}1.0, 10${i}2.0, 10${i}3.0]'), findsOneWidget);
      }
    });

    testWidgets('Empty lists are displayed as brackets', (tester) async {
      final complexObject = ConvertedComplexObject(
        aString: 'Blah, blah, blah',
        anInt: 1,
        aDouble: 1.0,
        aListOfStrings: [],
        aListOfInts: [],
        aListOfDoubles: [],
        anObject: ConvertedSimpleObject(
          aString: 'Child 1',
          anInt: 101,
          aDouble: 101.0,
          aListOfStrings: ['1011', '1012', '1013'],
          aListOfInts: [1011, 1012, 1013],
          aListOfDoubles: [1011.0, 1012.0, 1013.0],
        ),
        aListOfObjects: [],
      );

      await tester.pumpWidget(
        MaterialApp(
          home: ComplexObjectView(complexObject),
        ),
      );

      expect(find.text('[]'), findsNWidgets(4));
    });

    testWidgets('Null values are displayed as NULL', (tester) async {
      final complexObject = ConvertedComplexObject(
        aString: null,
        anInt: null,
        aDouble: null,
        aListOfStrings: null,
        aListOfInts: null,
        aListOfDoubles: null,
        anObject: null,
        aListOfObjects: null,
      );

      await tester.pumpWidget(
        MaterialApp(
          home: ComplexObjectView(complexObject),
        ),
      );

      expect(find.text('NULL'), findsNWidgets(8));
    });
  });
}
