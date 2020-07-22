// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:federated_plugin_platform_interface/location_method_channel.dart';
import 'package:federated_plugin_platform_interface/location_model.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract class FederatedPluginInterface extends PlatformInterface {
  FederatedPluginInterface() : super(token: _object);

  static FederatedPluginInterface _federatedPluginInterface =
      LocationMethodChannel();

  static final Object _object = Object();

  static FederatedPluginInterface get instance => _federatedPluginInterface;

  static set instance(FederatedPluginInterface instance) {
    PlatformInterface.verifyToken(instance, _object);
    _federatedPluginInterface = instance;
  }

  Future<Location> getLocation() async {
    throw UnimplementedError('getLocation() has not been implemented.');
  }
}
