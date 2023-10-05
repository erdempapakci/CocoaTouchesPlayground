
/*
Gesture Detection: This recognizer is responsible for detecting long-press gestures. You can configure it to trigger an action when a long press is detected.
 Configuration: You can customize various aspects of the long-press gesture, such as the minimum duration the user must press and hold to trigger the gesture (minimumPressDuration), the maximum movement allowed during the press (allowableMovement), and the number of fingers required for the gesture (numberOfTouchesRequired).
 Actions: You can associate one or more target-action pairs with the recognizer. When a long press is detected, the associated action methods are called on the target objects, allowing you to respond to the gesture.
 State Handling: The gesture recognizer has different states (UIGestureRecognizerState), including .began, .changed, .ended, and others, which correspond to the different phases of the long-press gesture. You can implement logic based on these states to handle the gesture appropriately.
 
 */

import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a view that responds to a long-press gesture
        let longPressView = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        longPressView.backgroundColor = .blue
        view.addSubview(longPressView)
        
        // Create a UILongPressGestureRecognizer
        let longPressGesture = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress(_:)))
        
        // Customize the gesture recognizer if needed
        longPressGesture.minimumPressDuration = 0.5 // Minimum press duration in seconds
        
        // Add the gesture recognizer to the view
        longPressView.addGestureRecognizer(longPressGesture)
    }
    
    @objc func handleLongPress(_ gestureRecognizer: UILongPressGestureRecognizer) {
        if gestureRecognizer.state == .began {
            // The long-press gesture has just started
            // Perform actions when the long press begins
            print("Long press began")
        }
        // You can handle other states like .changed, .ended, etc., as needed
    }
}
