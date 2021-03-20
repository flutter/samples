// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:federated_plugin_platform_interface/federated_plugin_platform_interface.dart';
import 'package:flutter/services.dart';

/// Implements [FederatedPluginInterface] using [MethodChannel] to fetch
/// battery level from platform.
class BatteryMethodChannel extends FederatedPluginInterface {
  static const MethodChannel _methodChannel = MethodChannel('battery');

  @override
  Future<int> getBatteryLevel() async {
    return await _methodChannel.invokeMethod<int>('getBatteryLevel') as int;
  }
}
