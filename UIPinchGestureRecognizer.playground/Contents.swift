
/*
 UIPinchGestureRecognizer is a gesture recognizer class in UIKit for iOS that recognizes pinching gestures performed by the user. A pinching gesture typically involves two fingers moving closer together (pinch in) or farther apart (pinch out) on a touch screen. It's commonly used for zooming or scaling interactions within an app, such as zooming in on an image or resizing a view.

 Key properties and methods of UIPinchGestureRecognizer include:

 scale: A property that represents the scaling factor of the pinch gesture. It indicates how much the fingers have moved apart (scale > 1.0) or closer together (scale < 1.0) since the gesture began.
 velocity: A property that represents the velocity of the pinch gesture. It indicates how fast the pinch gesture is occurring.
 initWithTarget(_:action:): An initializer to create a pinch gesture recognizer and specify the target and action to be called when the gesture is recognized.
 numberOfTouchesRequired: A property to specify the number of fingers required for the gesture to be recognized. By default, it's set to 2 for pinching gestures.
 minimumScale and maximumScale: Properties that allow you to set minimum and maximum scaling limits for the pinch gesture.
 delegate: A property that allows you to set a delegate to receive notifications and customize the behavior of the gesture recognizer.

 
 */

import UIKit

class ViewController: UIViewController {
    let imageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create and configure the image view
        imageView.image = UIImage(systemName: "heart.fill")
        imageView.frame = view.bounds
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
        
        // Create a pinch gesture recognizer
        let pinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(handlePinchGesture(_:)))
        
        // Add the gesture recognizer to the image view
        imageView.addGestureRecognizer(pinchGestureRecognizer)
        
        // Enable user interaction on the image view
        imageView.isUserInteractionEnabled = true
    }
    
    @objc func handlePinchGesture(_ recognizer: UIPinchGestureRecognizer) {
        // Get the scaling factor from the gesture recognizer
        let scale = recognizer.scale
        
        // Apply the scaling factor to the image view's transform
        imageView.transform = imageView.transform.scaledBy(x: scale, y: scale)
        
        // Reset the recognizer's scale back to 1.0 to avoid cumulative scaling
        recognizer.scale = 1.0
    }
}
