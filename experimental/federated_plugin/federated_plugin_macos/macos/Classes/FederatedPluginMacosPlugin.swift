// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import Cocoa
import FlutterMacOS
import IOKit.ps

public class FederatedPluginMacosPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "battery", binaryMessenger: registrar.messenger)
    let instance = FederatedPluginMacosPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getBatteryLevel":
        getBatteryLevel(result)
    default:
      result(FlutterMethodNotImplemented)
    }
  }

    private func getBatteryLevel(_ result: FlutterResult) {
        let snapshot = IOPSCopyPowerSourcesInfo().takeRetainedValue()
        let sources = IOPSCopyPowerSourcesList(snapshot).takeRetainedValue() as Array
        let sourceInfo : NSDictionary = IOPSGetPowerSourceDescription(snapshot, sources[0]).takeUnretainedValue()
        
        guard let capacity = sourceInfo[kIOPSCurrentCapacityKey] as? Int else {
            result(FlutterError(code: "STATUS_UNAVAILABLE", message: "Not able to determine battery level", details: nil))
            return
        }
        
        result(capacity)
    }
}
