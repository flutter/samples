// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:html' as html;

import 'package:federated_plugin_platform_interface/federated_plugin_platform_interface.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// Web Implementation of [FederatedPluginInterface] to retrieve current battery
/// level of device.
class FederatedPlugin extends FederatedPluginInterface {
  final html.Navigator _navigator;

  /// Constructor to override the navigator object for testing purpose.
  FederatedPlugin({html.Navigator navigator})
      : _navigator = navigator ?? html.window.navigator;

  /// Method to register the plugin which sets [FederatedPlugin] to be the default
  /// instance of [FederatedPluginInterface].
  static void registerWith(Registrar registrar) {
    FederatedPluginInterface.instance = FederatedPlugin();
  }

  /// Returns the current battery level of device.
  ///
  /// If any error, it's assume that the BatteryManager API is not supported by
  /// browser.
  @override
  Future<int> getBatteryLevel() async {
    try {
      final battery = await _navigator.getBattery() as html.BatteryManager;
      // The battery level retrieved is in range of 0.0 to 1.0.
      return battery.level * 100 as int;
    } catch (error) {
      throw PlatformException(
        code: 'STATUS_UNAVAILABLE',
        message: 'The plugin is not supported by the browser.',
        details: null,
      );
    }
  }
}
