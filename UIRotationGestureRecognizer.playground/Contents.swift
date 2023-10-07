
/*
 UIRotationGestureRecognizer is a gesture recognizer class provided by UIKit on iOS and macOS. It is used to recognize rotation gestures performed by the user, typically involving two fingers moving in a circular motion. This gesture is commonly used for tasks like rotating objects or images in an app.
 */

import UIKit

class ViewController: UIViewController {
    private var rotationAngle: CGFloat = 0.0
    private var rotationView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a view to be rotated
        rotationView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width , height: view.frame.height))
        rotationView.backgroundColor = .blue
        view.addSubview(rotationView)

        // Create a rotation gesture recognizer
        let rotationGestureRecognizer = UIRotationGestureRecognizer(target: self, action: #selector(handleRotation(_:)))
        rotationView.addGestureRecognizer(rotationGestureRecognizer)
    }

    @objc func handleRotation(_ recognizer: UIRotationGestureRecognizer) {
        // Get the rotation angle from the gesture recognizer
        let rotation = recognizer.rotation

        // Apply the rotation angle to the view
        rotationView.transform = rotationView.transform.rotated(by: rotation)

        // Reset the rotation angle to zero to avoid cumulative rotations
        recognizer.rotation = 0.0

        // You can also handle gesture states here if needed
        switch recognizer.state {
        case .began:
            // Rotation gesture began
            break
        case .changed:
            // Rotation gesture is in progress
            break
        case .ended:
            // Rotation gesture ended
            break
        default:
            break
        }
    }
}
