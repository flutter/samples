// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:federated_plugin/federated_plugin.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Federated Plugin Test', () {
    final batteryLevel = 34;
    MethodChannel('battery').setMockMethodCallHandler((call) async {
      if (call.method == 'getBatteryLevel') {
        return batteryLevel;
      }
    });

    test('getBatteryLevel method test', () async {
      final result = await getBatteryLevel();
      expect(result, batteryLevel);
    });
  });
}
