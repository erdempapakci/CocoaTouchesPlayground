
/*
 Dynamic Motion: UIMotionEffect allows you to add motion effects that react to the user's physical movements. For example, as the user tilts or moves their device, UI elements can appear to move and respond accordingly.
 CoreMotion Integration: The motion effects are integrated with the Core Motion framework, which provides access to device motion data (acceleration, rotation, etc.). This integration allows you to create motion effects that respond to device motion.
 Motion Groups: You can combine multiple motion effects into a group using UIMotionEffectGroup. This allows you to apply multiple motion effects simultaneously to an element.
 Customization: You can customize motion effects by specifying the key paths that should respond to motion. Key paths define which properties of the view are affected by the motion. Common properties include center, transform, and layer.shadowOffset.
 Accessibility: When using motion effects, consider accessibility guidelines. Some users may find excessive motion distracting or uncomfortable, so it's important to ensure a good user experience for all.
 */

import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a UIView to apply the motion effect to
        let myView = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        myView.backgroundColor = UIColor.blue
        view.addSubview(myView)

        // Create a motion effect
        let motionEffect = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
        motionEffect.minimumRelativeValue = -20
        motionEffect.maximumRelativeValue = 20

        // Apply the motion effect to the view
        myView.addMotionEffect(motionEffect)
    }
}
