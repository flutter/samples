import Foundation
import Flutter

class SingleFlutterViewController : FlutterViewController, DataModelObserver {
  var _channel : FlutterMethodChannel?
  var _engine : FlutterEngine!
  
  init(withEntrypoint entryPoint: String?) {
    let appDelegate : AppDelegate = UIApplication.shared.delegate as! AppDelegate
    _engine = appDelegate.engines.makeEngine(withEntrypoint: entryPoint, libraryURI: nil)
    super.init(engine: _engine, nibName: nil, bundle: nil)
    DataModel.shared.addObserver(observer: self);
  }
  
  deinit {
    DataModel.shared.removeObserver(observer: self)
  }
  
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func onCountUpdate(newCount: Int64) {
    if let channel = _channel {
      channel.invokeMethod("setCount", arguments: newCount);
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    _channel = FlutterMethodChannel(name: "multiple-flutters", binaryMessenger: self.engine!.binaryMessenger)
    _channel!.invokeMethod("setCount", arguments: DataModel.shared.count)
    let navController = self.navigationController!
    _channel!.setMethodCallHandler { (call : FlutterMethodCall, result : @escaping FlutterResult) in
      if (call.method == "incrementCount") {
        DataModel.shared.count = DataModel.shared.count + 1
        result(nil)
      } else if (call.method == "next") {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "Count")
        navController.pushViewController(vc, animated: true)
        result(nil)
      } else {
        result(FlutterMethodNotImplemented);
      }
    }
  }
}
