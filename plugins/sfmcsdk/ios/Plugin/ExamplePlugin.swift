import Foundation
import Capacitor
import SFMCSDK

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ExamplePlugin)
public class ExamplePlugin: CAPPlugin {
    private let implementation = Example()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        
        // Test call to sfmc sdk
        let contactKey = SFMCSdk.mp.contactKey()
        
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}
