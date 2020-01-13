// Copyright 2018, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate, PlatformViewControllerDelegate {
  var flutterResult: FlutterResult?

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
        let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
        let channel = FlutterMethodChannel.init(name: "dev.flutter.sample/platform_view_swift", binaryMessenger: controller.binaryMessenger)
        
        channel.setMethodCallHandler({
            (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
            if ("switchView" == call.method) {
                self.flutterResult = result
                
                let platformViewController = PlatformViewController(nibName: "PlatformViewController", bundle: nil)
                platformViewController.counter = call.arguments as! Int
                platformViewController.delegate = self
                
                let navigationController = UINavigationController(rootViewController: platformViewController)
                navigationController.navigationBar.topItem?.title = "Platform View"
                controller.present(navigationController, animated: true, completion: nil)
            } else {
                result(FlutterMethodNotImplemented)
            }
        });
        
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    func didUpdateCounter(counter: Int) {
        flutterResult?(counter)
    }
}
