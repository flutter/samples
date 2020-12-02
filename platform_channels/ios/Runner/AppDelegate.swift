// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let flutterViewController = window.rootViewController as! FlutterViewController
        FlutterMethodChannel(name: "methodChannelDemo", binaryMessenger: flutterViewController.binaryMessenger).setMethodCallHandler({
            (call: FlutterMethodCall, result: FlutterResult) -> Void in
            
            guard let count = (call.arguments as? NSDictionary)?["count"] as? Int else {
                result(FlutterError(code: "INVALID_ARGUMENT", message: "Value of count cannot be null", details: nil))
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
        
        FlutterBasicMessageChannel(name: "platformImageDemo", binaryMessenger: flutterViewController.binaryMessenger, codec: FlutterStandardMessageCodec.sharedInstance()).setMessageHandler{
            (message: Any?, reply: FlutterReply) -> Void in
            
            if(message as! String == "getImage") {
                guard let image = UIImage(named: "eat_new_orleans.jpg") else {
                    reply(nil)
                    return
                }
                
                reply(FlutterStandardTypedData(bytes: image.jpegData(compressionQuality: 1)!))
            }
        }
        
        FlutterEventChannel(name: "eventChannelDemo", binaryMessenger: flutterViewController.binaryMessenger).setStreamHandler(AccelerometerStreamHandler())
        
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
