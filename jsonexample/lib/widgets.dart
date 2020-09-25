// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:jsonexample/utils.dart';

class SimpleObjectView extends StatelessWidget {
  SimpleObjectView(dynamic obj) : simpleObject = obj;

  final dynamic simpleObject;

  @override
  Widget build(BuildContext context) {
    final localTheme = Theme.of(context).textTheme;
    final boldStyle =
        localTheme.bodyText2.copyWith(fontWeight: FontWeight.w600);

    if (simpleObject == null) return Text('NULL', style: localTheme.bodyText2);

    return Table(
      columnWidths: const {
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(1.0),
      },
      children: [
        TableRow(
          children: [
            Text(
              'aString:',
              style: boldStyle,
            ),
            Text(
              simpleObject.aString != null
                  ? '"${simpleObject.aString}"'
                  : 'NULL',
              style: localTheme.bodyText2,
            ),
          ],
        ),
        TableRow(
          children: [
            Text('anInt:', style: boldStyle),
            Text(
              simpleObject.anInt?.toString() ?? 'NULL',
              style: localTheme.bodyText2,
            ),
          ],
        ),
        TableRow(children: [
          Text('aDouble:', style: boldStyle),
          Text(
            simpleObject.aDouble?.toString() ?? 'NULL',
            style: localTheme.bodyText2,
          ),
        ]),
        TableRow(
          children: [
            Text('aListOfStrings:', style: boldStyle),
            Text(
              prettyPrintList(
                simpleObject.aListOfStrings as Iterable<dynamic>,
              ),
              style: localTheme.bodyText2,
            ),
          ],
        ),
        TableRow(
          children: [
            Text('aListOfInts:', style: boldStyle),
            Text(
              prettyPrintList(simpleObject.aListOfInts as Iterable<dynamic>),
              style: localTheme.bodyText2,
            ),
          ],
        ),
        TableRow(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text('aListOfDoubles:', style: boldStyle),
            ),
            Text(
              prettyPrintList(simpleObject.aListOfDoubles as Iterable<dynamic>),
              style: localTheme.bodyText2,
            ),
          ],
        ),
      ],
    );
  }
}

class SimpleObjectViewList extends StatelessWidget {
  SimpleObjectViewList(List<dynamic> objects) : simpleObjects = objects;

  final List<dynamic> simpleObjects;

  @override
  Widget build(BuildContext context) {
    final widgets = <Widget>[];

    for (var i = 0; i < simpleObjects.length; i++) {
      widgets.addAll([
        Text(
          'SimpleObject $i:',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(height: 4.0),
        SimpleObjectView(simpleObjects[i]),
        const SizedBox(height: 24.0),
      ]);
    }

    widgets.removeLast();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,
    );
  }
}

class ComplexObjectView extends StatelessWidget {
  final dynamic complexObject;

  ComplexObjectView(dynamic obj) : complexObject = obj;

  List<Widget> _generateSimpleObjectWidgets(Iterable<dynamic> simpleObjects) {
    if (simpleObjects == null) {
      return [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Text('NULL'),
        ),
      ];
    }

    if (simpleObjects.isEmpty) {
      return [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 4.0),
          child: Text('[]'),
        ),
      ];
    }

    return simpleObjects
        .expand((dynamic o) => [
              const SizedBox(height: 4.0),
              SimpleObjectView(o),
              const SizedBox(height: 4.0),
            ])
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final localTheme = Theme.of(context).textTheme;
    final boldStyle =
        localTheme.bodyText2.copyWith(fontWeight: FontWeight.w600);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Table(
          columnWidths: const {
            0: IntrinsicColumnWidth(),
            1: FlexColumnWidth(1.0),
          },
          children: [
            TableRow(
              children: [
                Text('aString:', style: boldStyle),
                Text(
                    complexObject.aString != null
                        ? '"${complexObject.aString}"'
                        : 'NULL',
                    style: localTheme.bodyText2),
              ],
            ),
            TableRow(
              children: [
                Text('anInt:', style: boldStyle),
                Text(complexObject.anInt?.toString() ?? 'NULL',
                    style: localTheme.bodyText2),
              ],
            ),
            TableRow(
              children: [
                Text('aDouble:', style: boldStyle),
                Text(complexObject.aDouble?.toString() ?? 'NULL',
                    style: localTheme.bodyText2),
              ],
            ),
            TableRow(
              children: [
                Text('anObject:', style: boldStyle),
                Container(),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 4.0, 0.0, 4.0),
          child: SimpleObjectView(complexObject.anObject),
        ),
        Table(
          columnWidths: const {
            0: IntrinsicColumnWidth(),
            1: FlexColumnWidth(1.0),
          },
          children: [
            TableRow(
              children: [
                Text('aListOfStrings:', style: boldStyle),
                Text(
                  prettyPrintList(
                      complexObject.aListOfStrings as Iterable<dynamic>),
                  style: localTheme.bodyText2,
                ),
              ],
            ),
            TableRow(
              children: [
                Text('aListOfInts:', style: boldStyle),
                Text(
                  prettyPrintList(
                      complexObject.aListOfInts as Iterable<dynamic>),
                  style: localTheme.bodyText2,
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Text('aListOfDoubles:', style: boldStyle),
                ),
                Text(
                  prettyPrintList(
                      complexObject.aListOfDoubles as Iterable<dynamic>),
                  style: localTheme.bodyText2,
                ),
              ],
            ),
            TableRow(
              children: [
                Text('aListOfObjects:', style: boldStyle),
                Container()
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _generateSimpleObjectWidgets(
                complexObject.aListOfObjects as Iterable<dynamic>),
          ),
        ),
      ],
    );
  }
}

class ComplexObjectViewList extends StatelessWidget {
  ComplexObjectViewList(List<dynamic> objects) : complexObjects = objects;

  final List<dynamic> complexObjects;

  @override
  Widget build(BuildContext context) {
    final widgets = <Widget>[];

    for (var i = 0; i < complexObjects.length; i++) {
      widgets.addAll([
        Text(
          'Complex Object $i:',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(height: 4.0),
        ComplexObjectView(complexObjects[i]),
        const SizedBox(height: 24.0),
      ]);
    }

    widgets.removeLast();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widgets,
    );
  }
}
