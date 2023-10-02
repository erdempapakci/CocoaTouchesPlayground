/*
 
 UIDevice is a class in UIKit on iOS that provides access to information about the device on which your app is running. It allows you to retrieve various device-related properties and information, such as the device model, system version, and hardware capabilities. You can use UIDevice to tailor your app's behavior or user interface based on the specific device characteristics.

 Here are some common use cases and properties of UIDevice:

 Device Model: You can retrieve the device model using the model property. For example, it can tell you whether the device is an iPhone, iPad, or iPod Touch.
 System Version: You can check the iOS version running on the device using the systemVersion property. This is useful for handling compatibility with different iOS versions.
 Device Name: The name property provides the user-assigned name of the device (e.g., "John's iPhone").
 Device Orientation: You can determine the current device orientation using the orientation property, which tells you if the device is in portrait, landscape, or other orientation modes.
 Battery State and Level: UIDevice provides information about the device's battery state (charging, discharging, etc.) and battery level using the batteryState and batteryLevel properties, respectively.
 User Interface Idiom: The userInterfaceIdiom property indicates whether the device is an iPhone, iPad, or an unspecified device.
 */



import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Get the device's model and system version
        let device = UIDevice.current
        let deviceModel = device.model
        let systemVersion = device.systemVersion
        let battery = device.name
        print(battery)
        print("Device Model: \(deviceModel)")
        print("System Version: \(systemVersion)")
    }
}
