import UIKit

final class FocusVC: UIViewController {
    
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
       
        
    }
    override func didUpdateFocus(in context: UIFocusUpdateContext, with coordinator: UIFocusAnimationCoordinator) {
           // Called when focus changes
           
           // Check if the previously focused view and the currently focused view
           // for context
           if let previouslyFocusedView = context.previouslyFocusedView {
               // Perform animations or transitions for the previously focused view
               coordinator.addCoordinatedAnimations({
                   // Your animations or transitions code here for the previously focused view
                   previouslyFocusedView.transform = CGAffineTransform.identity
               }, completion: nil)
           }

           if let nextFocusedView = context.nextFocusedView {
               // Perform animations or transitions for the currently focused view
               coordinator.addCoordinatedAnimations({
                   // Your animations or transitions code here for the currently focused view
                   nextFocusedView.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
               }, completion: nil)
           }
       }
}
