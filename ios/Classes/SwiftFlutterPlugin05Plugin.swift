import Flutter
import UIKit

public class SwiftFlutterPlugin05Plugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_plugin05", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterPlugin05Plugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "testString"  {
        result("return taotao")
    }
    result("iOS " + UIDevice.current.systemVersion)
  }
}
