/*
 UIScreenMode is a class in UIKit that represents a specific display mode or configuration for a screen. In iOS, each screen (such as the main device screen or an external display) can have multiple supported display modes, each with its own set of characteristics, including resolution, refresh rate, and pixel density.

 Key properties and methods of UIScreenMode include:

 size: Returns the size of the screen mode in points (width and height).
 pixelAspectRatio: Returns the pixel aspect ratio of the screen mode.
 scale: Returns the scale factor of the screen mode.
 description: Returns a human-readable description of the screen mode.
 init(size: CGSize, pixelAspectRatio: CGFloat, scale: CGFloat, isPortrait: Bool): Initializes a UIScreenMode object with the specified characteristics.
 */

import UIKit


class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        if let activeMode = UIScreen.main.currentMode {
            print("Active Screen Mode: \(activeMode)")
            print("Size: \(activeMode.size)")
            print("Pixel Aspect Ratio: \(activeMode.pixelAspectRatio)")
            print("Description: \(activeMode.description)")
        }
        let availableModes = UIScreen.main.availableModes
        
        

        for mode in availableModes {
            print("Size: \(mode.size), Mode: \(mode) ")
        }
       
    }
    
    
    
}
