// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:federated_plugin_platform_interface/battery_method_channel.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('MethodChannel test', () {
    final batteryLevel = 89;
    MethodChannel('battery').setMockMethodCallHandler((call) async {
      if (call.method == 'getBatteryLevel') {
        return batteryLevel;
      }
    });

    test('getBatteryLevel method test', () async {
      final locationMethodChannel = BatteryMethodChannel();
      final result = await locationMethodChannel.getBatteryLevel();
      expect(result, batteryLevel);
    });
  });
}
