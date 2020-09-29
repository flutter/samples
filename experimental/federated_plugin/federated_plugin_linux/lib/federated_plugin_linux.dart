// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:dbus/dbus.dart';
import 'package:federated_plugin_platform_interface/federated_plugin_platform_interface.dart';
import 'package:upower/upower.dart';

/// Linux Implementation of [FederatedPluginInterface] to retrieve current battery
/// level of device.
class FederatedPluginLinux extends FederatedPluginInterface {
  FederatedPluginLinux({this.uPowerClientMock});

  UPowerClient uPowerClientMock;

  @override
  Future<int> getBatteryLevel() async {
    var uPowerClient = uPowerClientMock ?? UPowerClient(DBusClient.system());
    await uPowerClient.connect();

    var batteryLevelSum = 0.0;
    var deviceCount = 0;
    uPowerClient.devices.forEach((device) {
      if (device.type == UPowerDeviceType.battery) {
        batteryLevelSum += device.percentage;
        deviceCount++;
      }
    });

    uPowerClient.close();
    return (batteryLevelSum / deviceCount).round();
  }
}
