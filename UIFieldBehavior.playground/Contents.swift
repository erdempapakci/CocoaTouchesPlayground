import UIKit

final class FieldViewController: UIViewController {
    
    var animator: UIDynamicAnimator!
        var fieldBehavior: UIFieldBehavior!
        var redView: UIView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            redView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
            redView.backgroundColor = .red
            view.addSubview(redView)
            
            // Create a dynamic animator
            animator = UIDynamicAnimator(referenceView: view)
            
            // Create a gravity field behavior
            fieldBehavior = UIFieldBehavior.radialGravityField(position: view.center)
            fieldBehavior.strength = 1.0 // Adjust the gravity strength
            fieldBehavior.region = UIRegion(radius: 200.0) // Define the region of influence
            
            // Add the field behavior to the animator
            animator.addBehavior(fieldBehavior)
        }
}
