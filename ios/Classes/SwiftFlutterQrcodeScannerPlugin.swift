
import Flutter
import UIKit

public class SwiftFlutterQrcodeScannerPlugin: NSObject, FlutterPlugin {

  var factory: QRViewFactory
  public init(with registrar: FlutterPluginRegistrar) {
    self.factory = QRViewFactory(withRegistrar: registrar)
    registrar.register(factory, withId: "com.flutter.scanner.flutter_qrcode_scanner/qrview")
  }
    
  public static func register(with registrar: FlutterPluginRegistrar) {
    registrar.addApplicationDelegate(SwiftFlutterQrcodeScannerPlugin(with: registrar))
  }
  
  public func applicationDidEnterBackground(_ application: UIApplication) {
  }

  public func applicationWillTerminate(_ application: UIApplication) {
  }

}
