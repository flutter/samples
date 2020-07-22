import 'package:flutter/services.dart';

import 'federated_plugin_platform_interface.dart';

class LocationMethodChannel extends FederatedPluginInterface {
  static const MethodChannel _methodChannel = MethodChannel('location');

  @override
  Future<String> getLocation() async {
    return await _methodChannel.invokeMethod('getLocation');
  }
}
