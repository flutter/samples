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
  const BasicsPage({Key? key}) : super(key: key);

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
    final boldStyle =
        localTheme.bodyText2!.copyWith(fontWeight: FontWeight.w600);

    final dynamicListOfInts = json.decode(JsonStrings.listOfInts) as List;
    final strongListOfInts = List<int>.from(dynamicListOfInts);

    final dynamicListOfStrings = json.decode(JsonStrings.listOfStrings) as List;
    final strongListOfStrings = List<String>.from(dynamicListOfStrings);

    final dynamicListOfDoubles = json.decode(JsonStrings.listOfDoubles) as List;
    final strongListOfDoubles = List<double>.from(dynamicListOfDoubles);

    final dynamicListOfDynamics =
        json.decode(JsonStrings.listOfDynamics) as List;
    final strongListOfDynamics = List<dynamic>.from(dynamicListOfDynamics);

    final dynamicMapOfDynamics = json.decode(JsonStrings.mapOfDynamics) as Map;
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
                  style: localTheme.bodyText2,
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
                  style: localTheme.bodyText2,
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
                  style: localTheme.bodyText2,
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
                  style: localTheme.bodyText2,
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
              localTheme.bodyText2!,
              boldStyle,
            ),
          ),
        ),
      ],
    );
  }
}

class ConvertedSimplePage extends StatelessWidget {
  const ConvertedSimplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var objects = JsonStrings.simpleObjects.map(
      (jsonString) {
        final parsedJson = json.decode(jsonString) as Map<String, dynamic>;
        return ConvertedSimpleObject.fromJson(parsedJson);
      },
    ).toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        SimpleObjectViewList(simpleObjects: objects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}

class ConvertedComplexPage extends StatelessWidget {
  const ConvertedComplexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var objects = JsonStrings.complexObjects.map(
      (jsonString) {
        final parsedJson = json.decode(jsonString) as Map<String, dynamic>;
        return ConvertedComplexObject.fromJson(parsedJson);
      },
    ).toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        ComplexObjectViewList(complexObjects: objects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}

class ConvertedListPage extends StatelessWidget {
  const ConvertedListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parsedJson = json.decode(JsonStrings.listOfSimpleObjects) as List;

    final deserializedObjects = parsedJson.map((dynamic o) =>
        ConvertedComplexObject.fromJson(o as Map<String, dynamic>));

    final listOfObjects = deserializedObjects.toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        SimpleObjectViewList(simpleObjects: listOfObjects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}

class SerializableSimplePage extends StatelessWidget {
  const SerializableSimplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var objects = JsonStrings.simpleObjects.map(
      (jsonString) {
        final parsedJson = json.decode(jsonString) as Map<String, dynamic>;
        return SerializableSimpleObject.fromJson(parsedJson);
      },
    ).toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        SimpleObjectViewList(simpleObjects: objects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}

class SerializableComplexPage extends StatelessWidget {
  const SerializableComplexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var objects = JsonStrings.complexObjects.map(
      (jsonString) {
        final parsedJson = json.decode(jsonString) as Map<String, dynamic>;
        return SerializableComplexObject.fromJson(parsedJson);
      },
    ).toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        ComplexObjectViewList(complexObjects: objects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}

class SerializableListPage extends StatelessWidget {
  const SerializableListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parsedJson = json.decode(JsonStrings.listOfSimpleObjects) as List;

    final deserializedObjects = parsedJson.map((dynamic o) =>
        SerializableSimpleObject.fromJson(o as Map<String, dynamic>));

    final listOfObjects = deserializedObjects.toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        SimpleObjectViewList(simpleObjects: listOfObjects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}

class BuiltSimplePage extends StatelessWidget {
  const BuiltSimplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var objects = JsonStrings.simpleObjects.map(
      (jsonString) {
        final parsedJson = json.decode(jsonString) as Object;
        return serializers.deserializeWith(
            BuiltSimpleObject.serializer, parsedJson);
      },
    ).toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        SimpleObjectViewList(simpleObjects: objects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}

class BuiltComplexPage extends StatelessWidget {
  const BuiltComplexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var objects = JsonStrings.complexObjects.map(
      (jsonString) {
        final parsedJson = json.decode(jsonString) as Object;
        return serializers.deserializeWith(
            BuiltComplexObject.serializer, parsedJson);
      },
    ).toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        ComplexObjectViewList(complexObjects: objects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}

class BuiltListPage extends StatelessWidget {
  const BuiltListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parsedJson = json.decode(JsonStrings.listOfSimpleObjects) as List;

    final deserializedObjects = parsedJson.map((dynamic o) =>
        serializers.deserializeWith(
            BuiltComplexObject.serializer, o as Map<String, dynamic>));

    final listOfObjects = deserializedObjects.toList();

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: [
        const SizedBox(height: 16.0),
        SimpleObjectViewList(simpleObjects: listOfObjects),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
