import UIKit

final class DynamicViewController: UIViewController {
    
    var animator: UIDynamicAnimator!
    var gravity: UIGravityBehavior!
    var greenView: UIView = {
       let temp = UIView()
        temp.backgroundColor = .green
        return temp
    }()
    var blueView: UIView = {
       let temp = UIView()
        temp.backgroundColor = .blue
        return temp
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greenView.frame = .init(x: 100, y: 100, width: 100, height: 100)
        blueView.frame = .init(x: 100, y: 700, width: 100, height: 100)
        view.addSubview(greenView)
        view.addSubview(blueView)
        animator = UIDynamicAnimator(referenceView: self.view)
        gravity = UIGravityBehavior()
        animator.addBehavior(gravity)
        gravity.addItem(self.greenView)
        // Gravity still goes down, but at a reduced force
        self.gravity.gravityDirection = CGVector(dx: 0, dy: 0.1)

        // Gravity goes up
        self.gravity.gravityDirection = CGVector(dx: 0, dy: -1)

        // Gravity goes diagonal
        self.gravity.gravityDirection = CGVector(dx: 1, dy: 1)
    }
    
}
