import Flutter
import UIKit

public class SwiftPigeonPlugin: NSObject, FlutterPlugin, FLTExampleApi {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let messenger : FlutterBinaryMessenger = registrar.messenger()
    let api : FLTExampleApi = SwiftPigeonPlugin.init()
    FLTExampleApiSetup(messenger, api);
  }

  public func getPlatformVersion(_ error: AutoreleasingUnsafeMutablePointer<FlutterError?>) -> FLTVersion? {
    let result = FLTVersion.init()
    result.string = "iOS " + UIDevice.current.systemVersion
    return result
  }
}
