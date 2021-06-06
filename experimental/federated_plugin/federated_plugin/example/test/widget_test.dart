// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:federated_plugin_example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('federated plugin demo tests', () {
    const batteryLevel = 45;
    setUpAll(() {
      const MethodChannel('battery').setMockMethodCallHandler((call) async {
        if (call.method == 'getBatteryLevel') {
          return batteryLevel;
        }
      });
    });

    testWidgets('get current battery level from platform', (tester) async {
      await tester.pumpWidget(const MyApp());

      // Tap button to retrieve current battery level from platform.
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      expect(find.text('Battery Level: $batteryLevel'), findsOneWidget);
    });
  });
}
