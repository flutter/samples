// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:federated_plugin_linux/federated_plugin_linux.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:upower/upower.dart';

double kBatteryLevel = 45.0;

void main() {
  group('FederatedPluginLinux tests', () {
    test('getBatteryLevel test', () async {
      var batteryLevel =
          await FederatedPluginLinux(uPowerClientMock: UPowerClientMock())
              .getBatteryLevel();

      // Verify the battery level.
      expect(batteryLevel, kBatteryLevel);
    });
  });
}

class UPowerClientMock extends Mock implements UPowerClient {
  @override
  Iterable<UPowerDevice> get devices => [UPowerDeviceMock()];

  @override
  Future connect() async {
    return;
  }

  @override
  void close() {
    return;
  }
}

class UPowerDeviceMock extends Mock implements UPowerDevice {
  @override
  double get percentage => kBatteryLevel;

  @override
  UPowerDeviceType get type => UPowerDeviceType.battery;
}
