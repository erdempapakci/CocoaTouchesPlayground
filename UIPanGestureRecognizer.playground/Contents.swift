/*
 UIPanGestureRecognizer is a class in UIKit for iOS that enables you to recognize and respond to panning gestures made by the user. A panning gesture typically involves the user touching the screen and moving their finger in any direction. You can use UIPanGestureRecognizer to track the movement of the touch and perform actions based on the gesture.

 Key properties and methods of UIPanGestureRecognizer include:

 minimumNumberOfTouches: The minimum number of touches required for the gesture to be recognized.
 maximumNumberOfTouches: The maximum number of touches that can be involved in the gesture.
 translation(in:): A method that returns the translation of the gesture in a specified view's coordinate system. You can use this to track how far the user has panned.
 velocity(in:): A method that returns the velocity of the gesture in a specified view's coordinate system. This is the speed at which the user is panning.
 setTranslation(_:in:): A method that sets the translation of the gesture in a specified view's coordinate system. You can use this to reset or manipulate the translation.
 location(in:): A method that returns the current location of the gesture in a specified view's coordinate system.
 addTarget(_:action:): A method that allows you to specify a target and an action to be executed when the gesture is recognized.
 */

import UIKit

class PanViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a view to be panned
        let pannableView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        pannableView.backgroundColor = UIColor.blue
        view.addSubview(pannableView)
        
        // Create a pan gesture recognizer
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        
        // Add the gesture recognizer to the view
        pannableView.addGestureRecognizer(panGesture)
    }
    
    @objc func handlePan(_ gestureRecognizer: UIPanGestureRecognizer) {
        if gestureRecognizer.state == .began || gestureRecognizer.state == .changed {
            // Get the translation of the gesture
            let translation = gestureRecognizer.translation(in: view)
            
            // Move the view based on the translation
            if let pannableView = gestureRecognizer.view {
                pannableView.center.x += translation.x
                pannableView.center.y += translation.y
            }
            
            // Reset the translation to prevent cumulative effect
            gestureRecognizer.setTranslation(CGPoint.zero, in: view)
        }
    }
}
