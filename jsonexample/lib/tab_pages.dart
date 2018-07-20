// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jsonexample/built_value/built_complex_object.dart';
import 'package:jsonexample/built_value/built_simple_object.dart';
import 'package:jsonexample/built_value/built_value_serializers.dart';
import 'package:jsonexample/dart_convert/converted_complex_object.dart';
import 'package:jsonexample/dart_convert/converted_simple_object.dart';
import 'package:jsonexample/json_serializable/serializable_complex_object.dart';
import 'package:jsonexample/json_serializable/serializable_simple_object.dart';
import 'package:jsonexample/json_strings.dart';
import 'package:jsonexample/utils.dart';
import 'package:jsonexample/widgets.dart';

class BasicsPage extends StatelessWidget {
  List<TableRow> createMapRows(
      Map<String, dynamic> values, TextStyle normalStyle, TextStyle boldStyle) {
    return values.keys.map((k) {
      return TableRow(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0, bottom: 4.0),
            child: Text(k, style: boldStyle),
          ),
          Text(
            values[k] is String ? '"${values[k]}"' : '${values[k]}',
            style: normalStyle,
          ),
        ],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final localTheme = Theme.of(context).textTheme;
    final boldStyle = localTheme.body1.copyWith(fontWeight: FontWeight.w600);

    final dynamicListOfInts = json.decode(JsonStrings.listOfInts);
    final strongListOfInts = List<int>.from(dynamicListOfInts);

    final dynamicListOfStrings = json.decode(JsonStrings.listOfStrings);
    final strongListOfStrings = List<String>.from(dynamicListOfStrings);

    final dynamicListOfDoubles = json.decode(JsonStrings.listOfDoubles);
    final strongListOfDoubles = List<double>.from(dynamicListOfDoubles);

    final dynamicListOfDynamics = json.decode(JsonStrings.listOfDynamics);
    final strongListOfDynamics = List<dynamic>.from(dynamicListOfDynamics);

    final dynamicMapOfDynamics = json.decode(JsonStrings.mapOfDynamics);
    final strongMapOfDynamics = Map<String, dynamic>.from(dynamicMapOfDynamics);

    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        Table(
          columnWidths: const {
            0: IntrinsicColumnWidth(),
            1: FlexColumnWidth(1.0),
          },
          children: [
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, bottom: 4.0),
                  child: Text('List of ints:', style: boldStyle),
                ),
                Text(
                  prettyPrintList(strongListOfInts),
                  style: localTheme.body1,
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, bottom: 4.0),
                  child: Text('List of strings:', style: boldStyle),
                ),
                Text(
                  prettyPrintList(strongListOfStrings),
                  style: localTheme.body1,
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, bottom: 4.0),
                  child: Text('List of doubles:', style: boldStyle),
                ),
                Text(
                  prettyPrintList(strongListOfDoubles),
                  style: localTheme.body1,
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, bottom: 4.0),
                  child: Text('List of dynamics:', style: boldStyle),
                ),
                Text(
                  prettyPrintList(strongListOfDynamics),
                  style: localTheme.body1,
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                  child: Text('Map of dynamics:', style: boldStyle),
                ),
                Container(),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Table(
            columnWidths: const {
              0: IntrinsicColumnWidth(),
              1: FlexColumnWidth(1.0),
            },
            children: createMapRows(
              strongMapOfDynamics,
              localTheme.body1,
              boldStyle,
            ),
          ),
        ),
      ],
    );
  }
}

class ConvertedSimplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ConvertedSimpleObject> objects = JsonStrings.simpleObjects.map(
      (jsonString) {
        final parsedJson = json.decode(jsonString);
        return ConvertedSimpleObject.fromJson(parsedJson);
      },
    ).toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        SimpleObjectViewList(objects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}

class ConvertedComplexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ConvertedComplexObject> objects = JsonStrings.complexObjects.map(
      (jsonString) {
        final parsedJson = json.decode(jsonString);
        return ConvertedComplexObject.fromJson(parsedJson);
      },
    ).toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        ComplexObjectViewList(objects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}

class ConvertedListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final parsedJson = json.decode(JsonStrings.listOfSimpleObjects);

    final deserializedObjects =
        parsedJson.map((o) => ConvertedComplexObject.fromJson(o));

    final listOfObjects = deserializedObjects.toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        SimpleObjectViewList(listOfObjects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}

class SerializableSimplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<SerializableSimpleObject> objects = JsonStrings.simpleObjects.map(
      (jsonString) {
        final parsedJson = json.decode(jsonString);
        return SerializableSimpleObject.fromJson(parsedJson);
      },
    ).toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        SimpleObjectViewList(objects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}

class SerializableComplexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<SerializableComplexObject> objects = JsonStrings.complexObjects.map(
      (jsonString) {
        final parsedJson = json.decode(jsonString);
        return SerializableComplexObject.fromJson(parsedJson);
      },
    ).toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        ComplexObjectViewList(objects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}

class SerializableListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final parsedJson = json.decode(JsonStrings.listOfSimpleObjects);

    final deserializedObjects =
        parsedJson.map((o) => SerializableSimpleObject.fromJson(o));

    final listOfObjects = deserializedObjects.toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        SimpleObjectViewList(listOfObjects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}

class BuiltSimplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<BuiltSimpleObject> objects = JsonStrings.simpleObjects.map(
      (jsonString) {
        final parsedJson = json.decode(jsonString);
        return serializers.deserializeWith(
            BuiltSimpleObject.serializer, parsedJson);
      },
    ).toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        SimpleObjectViewList(objects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}

class BuiltComplexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<BuiltComplexObject> objects = JsonStrings.complexObjects.map(
      (jsonString) {
        final parsedJson = json.decode(jsonString);
        return serializers.deserializeWith(
            BuiltComplexObject.serializer, parsedJson);
      },
    ).toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        ComplexObjectViewList(objects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}

class BuiltListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final parsedJson = json.decode(JsonStrings.listOfSimpleObjects);

    final deserializedObjects = parsedJson.map(
        (o) => serializers.deserializeWith(BuiltComplexObject.serializer, o));

    final listOfObjects = deserializedObjects.toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        SimpleObjectViewList(listOfObjects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
