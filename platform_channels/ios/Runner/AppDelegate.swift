// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate, FlutterImplicitEngineDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  func didInitializeImplicitFlutterEngine(_ engineBridge: FlutterImplicitEngineBridge) {
    GeneratedPluginRegistrant.register(with: engineBridge.pluginRegistry)

    let messenger = engineBridge.applicationRegistrar.messenger()

    FlutterMethodChannel(name: "methodChannelDemo", binaryMessenger: messenger)
      .setMethodCallHandler({ (call: FlutterMethodCall, result: FlutterResult) -> Void in
        guard let count = (call.arguments as? NSDictionary)?["count"] as? Int else {
          result(
            FlutterError(
              code: "INVALID_ARGUMENT",
              message: "Value of count cannot be null",
              details: nil
            )
          )
          return
        }

        switch call.method {
        case "increment":
          result(count + 1)
        case "decrement":
          result(count - 1)
        default:
          result(FlutterMethodNotImplemented)
        }
      })

    FlutterBasicMessageChannel(
      name: "platformImageDemo",
      binaryMessenger: messenger,
      codec: FlutterStandardMessageCodec.sharedInstance()
    ).setMessageHandler { (message: Any?, reply: FlutterReply) -> Void in
      if message as! String == "getImage" {
        guard let image = UIImage(named: "eat_new_orleans.jpg") else {
          reply(nil)
          return
        }

        reply(FlutterStandardTypedData(bytes: image.jpegData(compressionQuality: 1)!))
      }
    }

    FlutterEventChannel(
      name: "eventChannelDemo",
      binaryMessenger: messenger
    ).setStreamHandler(AccelerometerStreamHandler())

    var petList: [[String: String]] = []

    // A FlutterBasicMessageChannel for sending petList to Dart.
    let stringCodecChannel = FlutterBasicMessageChannel(
      name: "stringCodecDemo",
      binaryMessenger: messenger,
      codec: FlutterStringCodec.sharedInstance()
    )

    // Registers a MessageHandler for FlutterBasicMessageChannel to receive pet details.
    FlutterBasicMessageChannel(
      name: "jsonMessageCodecDemo",
      binaryMessenger: messenger,
      codec: FlutterJSONMessageCodec.sharedInstance()
    ).setMessageHandler { (message: Any?, reply: FlutterReply) -> Void in
      petList.insert(message! as! [String: String], at: 0)
      stringCodecChannel.sendMessage(self.convertPetListToJson(petList: petList))
    }

    // Registers a MessageHandler for FlutterBasicMessageHandler to receive indices of detail records to remove from the petList.
    FlutterBasicMessageChannel(
      name: "binaryCodecDemo",
      binaryMessenger: messenger,
      codec: FlutterBinaryCodec.sharedInstance()
    ).setMessageHandler { (message: Any?, reply: FlutterReply) -> Void in
      guard let index = Int(String(data: message! as! Data, encoding: String.Encoding.utf8)!) else {
        reply(nil)
        return
      }

      if index >= 0 && index < petList.count {
        petList.remove(at: index)
        reply("Removed Successfully".data(using: .utf8)!)
        stringCodecChannel.sendMessage(self.convertPetListToJson(petList: petList))
      } else {
        reply(nil)
      }
    }
  }

  // Function to convert petList to json string.
  func convertPetListToJson(petList: [[String: String]]) -> String? {
    guard let data = try? JSONSerialization.data(withJSONObject: ["petList": petList], options: .prettyPrinted) else {
      return nil
    }
    return String(data: data, encoding: String.Encoding.utf8)
  }
}
