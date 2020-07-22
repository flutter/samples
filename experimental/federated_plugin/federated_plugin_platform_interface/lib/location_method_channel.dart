import 'package:federated_plugin_platform_interface/location_model.dart';
import 'package:flutter/services.dart';

import 'federated_plugin_platform_interface.dart';

class LocationMethodChannel extends FederatedPluginInterface {
  static const MethodChannel _methodChannel = MethodChannel('location');

  @override
  Future<Location> getLocation() async {
    final result = await _methodChannel.invokeMethod<List<dynamic>>('getLocation');
    return Location(
      longitude: result.first as double,
      latitude: result.last as double
    );
  }
}
