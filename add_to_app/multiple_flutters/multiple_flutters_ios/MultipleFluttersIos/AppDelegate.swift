// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import Flutter
import UIKit

/// The app's UIApplicationDelegate.
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  let engines = FlutterEngineGroup(name: "multiple-flutters", project: nil)

  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    #if DEBUG
      let isDebug = true
    #else
      let isDebug = false
    #endif
    if isDebug {
      NSLog(
        "📣 NOTICE: the memory and CPU costs for Flutter engine groups are significantly greater in debug builds.  See also: https://github.com/dart-lang/sdk/issues/36097"
      )
    } else {
      NSLog(
        "📣 NOTICE: the memory and CPU costs for Flutter engine groups are significantly less here than in debug builds.  See also: https://github.com/dart-lang/sdk/issues/36097"
      )
    }

    return true
  }

  func application(
    _ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession,
    options: UIScene.ConnectionOptions
  ) -> UISceneConfiguration {
    return UISceneConfiguration(
      name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }

  func application(
    _ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>
  ) {
  }
}
