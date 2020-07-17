// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/services.dart';

class FederatedPlugin {
  static const MethodChannel _channel = MethodChannel('federated_plugin');

  static Future<String> get platformVersion async {
    final version = await _channel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
