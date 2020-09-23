
import 'dart:async';

import 'package:flutter/services.dart';
import 'messages.dart';

class PigeonPlugin {
  static ExampleApi _apiInstance;

  static ExampleApi get _api {
    if (_apiInstance == null) {
      _apiInstance = ExampleApi();
    }
    return _apiInstance;
  }

  static Future<String> get platformVersion async {
    Version version = await _api.getPlatformVersion();
    return version.string;
  }
}
