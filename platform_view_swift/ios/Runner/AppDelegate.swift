// Copyright 2018, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate, FlutterImplicitEngineDelegate, PlatformViewControllerDelegate {
  var flutterResult: FlutterResult?

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  func didInitializeImplicitFlutterEngine(_ engineBridge: FlutterImplicitEngineBridge) {
    GeneratedPluginRegistrant.register(with: engineBridge.pluginRegistry)

    let registrar = engineBridge.pluginRegistry.registrar(forPlugin: "PlatformViewSwift")
    let channel = FlutterMethodChannel(
      name: "dev.flutter.sample/platform_view_swift",
      binaryMessenger: engineBridge.applicationRegistrar.messenger()
    )

    channel.setMethodCallHandler({
      [weak self] (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
      guard let self = self else { return }
      if "switchView" == call.method {
        self.flutterResult = result

        let platformViewController = PlatformViewController(nibName: "PlatformViewController", bundle: nil)
        platformViewController.counter = call.arguments as! Int
        platformViewController.delegate = self

        let navigationController = UINavigationController(rootViewController: platformViewController)
        navigationController.navigationBar.topItem?.title = "Platform View"

        let presenter = registrar?.viewController ?? UIApplication.shared.connectedScenes
          .compactMap { $0 as? UIWindowScene }
          .flatMap { $0.windows }
          .first { $0.isKeyWindow }?
          .rootViewController

        presenter?.present(navigationController, animated: true, completion: nil)
      } else {
        result(FlutterMethodNotImplemented)
      }
    })
  }

  func didUpdateCounter(counter: Int) {
    flutterResult?(counter)
  }
}
