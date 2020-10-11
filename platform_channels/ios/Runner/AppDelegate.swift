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
        
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
