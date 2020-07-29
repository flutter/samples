// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:federated_plugin_platform_interface/location_method_channel.dart';
import 'package:federated_plugin_platform_interface/location_model.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

/// Interface which allows all the platform plugins to implement the same
/// functionality.
abstract class FederatedPluginInterface extends PlatformInterface {
  FederatedPluginInterface() : super(token: _object);

  static FederatedPluginInterface _federatedPluginInterface =
      LocationMethodChannel();

  static final Object _object = Object();

  /// Provides instance of [LocationMethodChannel] to invoke platform calls.
  static FederatedPluginInterface get instance => _federatedPluginInterface;

  static set instance(FederatedPluginInterface instance) {
    PlatformInterface.verifyToken(instance, _object);
    _federatedPluginInterface = instance;
  }

  /// Returns [Location] to provide latitude and longitude.
  Future<Location> getLocation() async {
    throw UnimplementedError('getLocation() has not been implemented.');
  }
}
