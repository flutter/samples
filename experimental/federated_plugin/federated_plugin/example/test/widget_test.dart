// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:federated_plugin_example/main.dart';

void main() {
  testWidgets('Verify Platform version', (tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that platform version is retrieved.
    expect(
      find.byWidgetPredicate(
        (widget) => widget is Text &&
                           widget.data.startsWith('Running on:'),
      ),
      findsOneWidget,
    );
  });
}
