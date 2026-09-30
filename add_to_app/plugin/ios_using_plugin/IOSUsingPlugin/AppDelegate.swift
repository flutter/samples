// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import Flutter
import FlutterPluginRegistrant
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  var flutterEngine: FlutterEngine?

  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // Instantiate Flutter engine
    self.flutterEngine = FlutterEngine(name: "io.flutter", project: nil)
    self.flutterEngine?.run(withEntrypoint: nil)
    GeneratedPluginRegistrant.register(with: self.flutterEngine!)

    return true
  }

  func application(
    _ application: UIApplication,
    configurationForConnecting connectingSceneSession: UISceneSession,
    options: UIScene.ConnectionOptions
  ) -> UISceneConfiguration {
    let configuration = UISceneConfiguration(
      name: "Default Configuration",
      sessionRole: connectingSceneSession.role
    )
    configuration.delegateClass = FlutterSceneDelegate.self
    return configuration
  }
}
