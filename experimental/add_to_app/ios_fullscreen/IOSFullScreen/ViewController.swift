// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import UIKit
import Flutter

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    
    var methodChannel : FlutterMethodChannel?
    
    var count = 0
    
    override func viewDidLoad() {
        if let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine {
            methodChannel = FlutterMethodChannel(name: "dev.flutter.example/counter",
                                                 binaryMessenger: flutterEngine.binaryMessenger)
            methodChannel?.setMethodCallHandler({
                (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
                switch(call.method) {
                case "incrementCounter":
                    self.count += 1
                    self.counterLabel.text = "Current counter: \(self.count)"
                    self.reportCounter()
                case "requestCounter":
                    self.reportCounter()
                default:
                    // Unrecognized method name
                    print("Unrecognized method name: \(call.method)")
                }
            })

        }
    }
    
    func reportCounter() {
        methodChannel?.invokeMethod("reportCounter", arguments: count)
    }
    
    @IBAction func buttonWasTapped(_ sender: Any) {
        let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)!
        self.present(flutterViewController, animated: false, completion: nil)
    }
}

