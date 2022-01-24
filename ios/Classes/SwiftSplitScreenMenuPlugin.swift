import Flutter
import UIKit

public class SwiftSplitScreenMenuPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "split_screen_menu", binaryMessenger: registrar.messenger())
    let instance = SwiftSplitScreenMenuPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
