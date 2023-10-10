/*
 Single Touch: Each UITouch instance represents a single point of contact, such as a finger, on the device's screen or trackpad.
 Properties: UITouch provides various properties to access information about the touch event, including:
 location(in: UIView): The location of the touch event in the coordinate system of a specific view.
 previousLocation(in: UIView): The previous location of the touch event, typically used to calculate the movement of the touch.
 timestamp: The time when the touch event occurred.
 phase: The phase of the touch event (e.g., began, moved, ended).
 tapCount: The number of taps for a touch event.
 type: The type of the touch event (e.g., direct touch, indirect touch).
 Force Sensing: On devices that support it (e.g., devices with 3D Touch or Force Touch capabilities), UITouch provides the force property, which represents the force applied to the touch.
 Multiple Touches: An iOS device can track multiple simultaneous touches, and each touch generates its own UITouch instance. These instances are typically stored in an array.
 Event Handling: You can access UITouch objects during touch events by implementing event handling methods in subclasses of UIResponder (e.g., in UIView, UIViewController, or UIApplication).
 */

import UIKit

class TouchableView: UIView {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        // Handle touch events when touches begin
        for touch in touches {
            let location = touch.location(in: self)
            print("Touch began at location: \(location)")
        }
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesMoved(touches, with: event)
        
        // Handle touch events as touches move
        for touch in touches {
            let location = touch.location(in: self)
            let previousLocation = touch.previousLocation(in: self)
            print("Touch moved from \(previousLocation) to \(location)")
        }
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        // Handle touch events when touches end
        for touch in touches {
            let location = touch.location(in: self)
            print("Touch ended at location: \(location)")
        }
    }
}




class ViewController: UIViewController {

    private lazy var customView: TouchableView = {
        let temp = TouchableView(frame: .init(x: 50, y: 150, width: 100, height: 100))
        temp.backgroundColor = .blue
        return temp
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(customView)
    }

}
