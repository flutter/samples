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
        super.viewDidLoad()

        if let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine {
            methodChannel = FlutterMethodChannel(name: "dev.flutter.example/counter",
                                                 binaryMessenger: flutterEngine.binaryMessenger)
            methodChannel?.setMethodCallHandler({ [weak self]
                (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
                if let strongSelf = self {
                    switch(call.method) {
                    case "incrementCounter":
                        strongSelf.count += 1
                        strongSelf.counterLabel.text = "Current counter: \(strongSelf.count)"
                        strongSelf.reportCounter()
                    case "requestCounter":
                        strongSelf.reportCounter()
                    default:
                        // Unrecognized method name
                        print("Unrecognized method name: \(call.method)")
                    }
                }
            })
        }
    }

    func reportCounter() {
        methodChannel?.invokeMethod("reportCounter", arguments: count)
    }
    
    @IBAction func buttonWasTapped(_ sender: Any) {
        if let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine {
            let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
            self.present(flutterViewController, animated: false, completion: nil)
        }
    }    
}

