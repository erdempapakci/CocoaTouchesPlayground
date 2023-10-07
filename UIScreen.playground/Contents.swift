/*
 Main Screen: There is always one main screen, which represents the device's primary screen. You can access the main screen using the main class property.
 Screen Properties:
 bounds: Returns the bounds of the screen in points. The bounds represent the entire screen area, excluding any system status bars or notches.
 nativeBounds: Returns the bounds of the screen in pixels, taking into account the device's screen scale.
 scale: Returns the screen's scale factor, which indicates the number of pixels per point. For Retina displays, this value is typically 2.0 or 3.0.
 brightness: Gets or sets the screen's brightness level. You can adjust the brightness programmatically if the device supports it.
 availableModes: Returns an array of supported display modes (e.g., resolutions and refresh rates). You can use this to choose the best display mode for your app.
 Screen Mirroring: You can check if the screen supports screen mirroring using the mirrored property. Screen mirroring allows you to display content on an external monitor or TV.
 Notification: You can observe screen-related notifications using the UIScreen.didConnectNotification and UIScreen.didDisconnectNotification notifications to respond to changes in connected screens.
 Coordinate Space: UIScreen provides methods to convert between screen coordinates and view coordinates. You can use UIScreen.convert(_:to:) and UIScreen.convert(_:from:) to convert between the two coordinate systems.
 */

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Access the main screen
        let mainScreen = UIScreen.main
        
        // Get the screen's bounds in points
        let screenBounds = mainScreen.bounds
        
        // Get the screen's scale factor
        let screenScale = mainScreen.scale
        
        // Display screen information
        print("Screen bounds: \(screenBounds)")
        print("Screen scale: \(screenScale)")
    }
    
    
}
