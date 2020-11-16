// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import Flutter
import UIKit

public class SwiftFederatedPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "battery", binaryMessenger: registrar.messenger())
    let instance = SwiftFederatedPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    guard call.method == "getBatteryLevel" else {
        result(FlutterMethodNotImplemented)
        return
    }
    
    let device = UIDevice.current
    device.isBatteryMonitoringEnabled = true
    
    if device.batteryState == UIDevice.BatteryState.unknown {
        result(FlutterError(code: "STATUS_UNAVAILABLE", message: "Not able to determine battery level", details: nil))
    }
    
    result(Int(device.batteryLevel * 100))
  }
}
