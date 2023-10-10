import UIKit

class ViewController: UIViewController {

    private lazy var animatedView: UIView = {
        let temp = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        temp.backgroundColor = .blue
        return temp
    }()
    
    private var animator: UIDynamicAnimator!
    private var snapBehavior: UISnapBehavior!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // Add the animated view to the view controller's view
        view.addSubview(animatedView)
        
        // Create a UIDynamicAnimator to manage the dynamic behavior
        animator = UIDynamicAnimator(referenceView: view)
        
        // Create a UISnapBehavior to animate the view to a specified point
        let snapPoint = CGPoint(x: view.bounds.midX, y: view.bounds.midY)
        snapBehavior = UISnapBehavior(item: animatedView, snapTo: snapPoint)
        
        // Adjust the damping to control the animation speed
        snapBehavior.damping = 0.5
        
        // Add the snap behavior to the animator
        animator.addBehavior(snapBehavior)
        
        // Create a button to trigger the animation
        let animateButton = UIButton(type: .system)
        animateButton.setTitle("Animate", for: .normal)
        animateButton.addTarget(self, action: #selector(animateView), for: .touchUpInside)
        animateButton.frame = CGRect(x: 50, y: 300, width: 200, height: 50)
        view.addSubview(animateButton)
    }
    
    @objc private func animateView() {
        // Trigger the snap behavior to animate the view to its target point
        animator.removeBehavior(snapBehavior)
        animator.addBehavior(snapBehavior)
    }
}
