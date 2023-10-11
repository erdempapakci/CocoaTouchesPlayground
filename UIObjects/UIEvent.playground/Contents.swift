
/*
 UIEvent is a fundamental class in UIKit for iOS and tvOS that represents an event that occurs in the user interface. It provides information about user interactions, such as touches, motion events, and remote control events. UIEvent objects are typically delivered to your app's event handling code through responder chain.

 Here are some key points about UIEvent:

 Types of Events: UIEvent can represent various types of events, including:
 Touches: For touch events, UIEvent provides information about the state of touches, their locations, and their time of occurrence.
 Motion Events: These events represent accelerometer and gyroscope data, and they are typically used for detecting device motion.
 Remote Control Events: These events occur when the user interacts with a remote control device, such as an Apple TV remote.
 Touch Events: For touch events, UIEvent contains information about multiple touches if applicable. You can access the touches through the allTouches property. Each touch is represented by a UITouch object, which contains details like the touch's location, phase, and view.
 Event Timestamp: UIEvent includes a timestamp property, timestamp, which indicates when the event occurred. This can be useful for tracking the sequence of events.
 Event Type: You can determine the type of the event using the type property, which can be one of the following constants: .touches, .motion, or .remoteControl.
 */

import UIKit

class MyCustomView: UIView {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        // Handle touch events
        if let touch = touches.first {
            let location = touch.location(in: self)
            print("Touch began at: \(location)")
        }
    }
    
}
