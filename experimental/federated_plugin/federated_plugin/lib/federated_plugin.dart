
import 'dart:async';

import 'package:flutter/services.dart';

class FederatedPlugin {
  static const MethodChannel _channel = MethodChannel('federated_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
