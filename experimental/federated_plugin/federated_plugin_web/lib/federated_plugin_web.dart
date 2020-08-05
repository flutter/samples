// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:html' as html;

import 'package:federated_plugin_platform_interface/federated_plugin_platform_interface.dart';
import 'package:federated_plugin_platform_interface/location_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// Web Implementation of [FederatedPluginInterface] to provide location.
class FederatedPlugin extends FederatedPluginInterface {
  final html.Geolocation _geolocation;

  /// Constructor to override the geolocation object for testing purpose.
  FederatedPlugin({html.Geolocation geolocation})
      : _geolocation = geolocation ?? html.window.navigator.geolocation;

  /// Method to register the plugin which sets [FederatedPlugin] to be the default
  /// instance of [FederatedPluginInterface].
  static void registerWith(Registrar registrar) {
    FederatedPluginInterface.instance = FederatedPlugin();
  }

  /// Returns [Location] to provide latitude and longitude.
  ///
  /// If any error, it's assume that user has denied the permission forever.
  @override
  Future<Location> getLocation() async {
    try {
      final geoPosition = await _geolocation.getCurrentPosition();
      return Location(
        longitude: geoPosition.coords.longitude.toDouble(),
        latitude: geoPosition.coords.latitude.toDouble(),
      );
    } catch (error) {
      throw PlatformException(
        code: 'PERMISSION_DENIED',
        message: 'Permission denied from User',
        details: null,
      );
    }
  }
}
