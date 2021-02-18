// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import Flutter
import Foundation

/// A FlutterViewController intended for the MyApp widget in the Flutter module.
///
/// This view controller maintains a connection to the Flutter instance and syncs it with the
/// datamodel.  In practice you should override the other init methods or switch to composition
/// instead of inheritence.
class SingleFlutterViewController: FlutterViewController, DataModelObserver {
  private var channel: FlutterMethodChannel?

  init(withEntrypoint entryPoint: String?) {
    let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
    let newEngine = appDelegate.engines.makeEngine(withEntrypoint: entryPoint, libraryURI: nil)
    super.init(engine: newEngine, nibName: nil, bundle: nil)
    DataModel.shared.addObserver(observer: self)
  }

  deinit {
    DataModel.shared.removeObserver(observer: self)
  }

  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  func onCountUpdate(newCount: Int64) {
    if let channel = channel {
      channel.invokeMethod("setCount", arguments: newCount)
    }
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    channel = FlutterMethodChannel(
      name: "multiple-flutters", binaryMessenger: self.engine!.binaryMessenger)
    channel!.invokeMethod("setCount", arguments: DataModel.shared.count)
    let navController = self.navigationController!
    channel!.setMethodCallHandler { (call: FlutterMethodCall, result: @escaping FlutterResult) in
      if call.method == "incrementCount" {
        DataModel.shared.count = DataModel.shared.count + 1
        result(nil)
      } else if call.method == "next" {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "NativeViewCount")
        navController.pushViewController(vc, animated: true)
        result(nil)
      } else {
        result(FlutterMethodNotImplemented)
      }
    }
  }
}
