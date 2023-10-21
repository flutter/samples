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

    testWidgets('get current battery level from platform', (tester) async {
      tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
        const MethodChannel('battery'),
        (call) async {
          if (call.method == 'getBatteryLevel') {
            return batteryLevel;
          }
          return 0;
        },
      );
      await tester.pumpWidget(const MyApp());

      // Tap button to retrieve current battery level from platform.
      await tester.tap(find.byType(FilledButton));
      await tester.pumpAndSettle();

      expect(find.text('Battery Level: $batteryLevel'), findsOneWidget);
    });
  });
}
