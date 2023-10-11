import UIKit

//UICubicTimingParameters allows custom cubic Bézier timing curves
// to control animation acceleration and deceleration.

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create control points for the cubic Bézier curve
        let controlPoint1 = CGPoint(x: 0.1, y: 0.7)
        let controlPoint2 = CGPoint(x: 0.9, y: 0.2)

        // Create a cubic timing parameters object
        let cubicTimingParameters = UICubicTimingParameters(controlPoint1: controlPoint1, controlPoint2: controlPoint2)

        // Create an animator with the timing parameters
        let animator = UIViewPropertyAnimator(duration: 1.0, timingParameters: cubicTimingParameters)

        // Add animation changes here
        // For example, animating a view's position
        let view = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        view.backgroundColor = UIColor.blue
        self.view.addSubview(view)

        animator.addAnimations {
            view.center = self.view.center
        }

        // Start the animation
        animator.startAnimation()
    }
}
