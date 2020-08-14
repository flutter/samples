// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:federated_plugin_platform_interface/battery_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

/// Interface which allows all the platform plugins to implement the same
/// functionality.
abstract class FederatedPluginInterface extends PlatformInterface {
  FederatedPluginInterface() : super(token: _object);

  static FederatedPluginInterface _federatedPluginInterface =
      BatteryMethodChannel();

  static final Object _object = Object();

  /// Provides instance of [BatteryMethodChannel] to invoke platform calls.
  static FederatedPluginInterface get instance => _federatedPluginInterface;

  static set instance(FederatedPluginInterface instance) {
    PlatformInterface.verifyToken(instance, _object);
    _federatedPluginInterface = instance;
  }

  /// Returns the current battery level of device.
  Future<int> getBatteryLevel() async {
    throw UnimplementedError('getBatteryLevel() has not been implemented.');
  }
}
