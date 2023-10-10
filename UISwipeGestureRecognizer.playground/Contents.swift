/*
 UISwipeGestureRecognizer is a class in Apple's UIKit framework used for recognizing swipe gestures in iOS apps. Swipes are a common form of touch-based interaction where a user quickly moves their finger in a specific direction (up, down, left, or right) on the screen. UISwipeGestureRecognizer allows developers to detect these swipe gestures and respond to them with custom actions or animations.

 Key properties and methods associated with UISwipeGestureRecognizer include:

 Direction: You can specify the direction of the swipe gesture using the direction property, which is of type UISwipeGestureRecognizer.Direction. This property can have one of the following values:
 .right: Recognizes a swipe from left to right.
 .left: Recognizes a swipe from right to left.
 .up: Recognizes a swipe from bottom to top.
 .down: Recognizes a swipe from top to bottom.
 numberOfTouchesRequired: This property allows you to specify the number of fingers (touches) required for the swipe gesture to be recognized. By default, it's set to 1, meaning a single finger swipe is recognized. You can increase this value if you want to require a multi-finger swipe.
 delegate: You can set a delegate for the UISwipeGestureRecognizer to receive notifications and customize its behavior further.
 Target-Action: You typically add a target and action to the gesture recognizer to specify what should happen when the swipe is recognized. When the gesture is detected, the associated action method is called.
 */

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Create a UISwipeGestureRecognizer for a right swipe
        let swipeRightGesture = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
        swipeRightGesture.direction = .right
        let view2 = UIView(frame: .init(x: 50, y: 50, width: 100, height: 100))
        view2.backgroundColor = .black
        view.addSubview(view2)
        // Add the gesture recognizer to a view
        view2.addGestureRecognizer(swipeRightGesture)
    }

    @objc func handleSwipe(_ gestureRecognizer: UISwipeGestureRecognizer) {
        if gestureRecognizer.direction == .right {
            // Handle the right swipe gesture
            print("Swiped right!")
        }
    }
}
