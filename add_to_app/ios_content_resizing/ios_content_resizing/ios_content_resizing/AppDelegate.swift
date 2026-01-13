import UIKit
import Flutter

@main
class AppDelegate: FlutterAppDelegate {
    // Make the engine lazy to be created when it's first needed.
    lazy var flutterEngine = FlutterEngine(name: "my_flutter_engine")

    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Pre-warms the FlutterEngine.
        flutterEngine.run()
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
