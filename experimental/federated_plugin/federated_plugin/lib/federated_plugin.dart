// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:federated_plugin_platform_interface/federated_plugin_platform_interface.dart';
import 'package:federated_plugin_platform_interface/location_model.dart';
export 'package:federated_plugin_platform_interface/location_model.dart';

/// Returns [Location] to provide latitude and longitude.
///
/// It uses [FederatedPluginInterface] interface to provide location.
Future<Location> getLocation() async {
  return await FederatedPluginInterface.instance.getLocation();
}
