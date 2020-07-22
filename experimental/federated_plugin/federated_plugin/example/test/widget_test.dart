// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:federated_plugin/federated_plugin.dart';
import 'package:federated_plugin_example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('federated plugin demo tests', () {
    final location = Location(latitude: 131.0, longitude: 221.0);
    setUpAll(() {
      MethodChannel('location').setMockMethodCallHandler((call) async {
        if (call.method == 'getLocation') {
          return [location.longitude, location.latitude];
        }
      });
    });

    testWidgets('get location from platform', (tester) async {
      await tester.pumpWidget(MyApp());

      // Tap button to get location from platform.
      await tester.tap(find.byType(RaisedButton));
      await tester.pumpAndSettle();

      expect(
        find.text('Latitude: ${location.latitude}\n'
            'Longitude: ${location.longitude}'),
        findsOneWidget,
      );
    });
  });
}
