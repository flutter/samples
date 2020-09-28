// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:io';

import 'package:federated_plugin_linux/federated_plugin_linux.dart';
import 'package:federated_plugin_platform_interface/federated_plugin_platform_interface.dart';

/// Returns the current battery level of device.
///
/// It uses [FederatedPluginInterface] interface to provide current battery level.
Future<int> getBatteryLevel() async {
  return await _instance.getBatteryLevel();
}

FederatedPluginInterface get _instance {
  if (Platform.isLinux) {
    print('True');
    return FederatedPluginLinux();
  } else {
    return FederatedPluginInterface.instance;
  }
}
