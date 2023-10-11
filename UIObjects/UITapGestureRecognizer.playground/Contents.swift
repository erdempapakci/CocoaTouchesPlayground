/*
 A UITapGestureRecognizer is a gesture recognizer that detects taps on a view. It can be used to implement custom gestures and interactions, such as opening a menu or selecting an item.
 */

import UIKit

final class ViewController: UIViewController {
    
    private lazy var customView: UIView = {
       let temp = UIView()
        temp.frame = .init(x: 50, y: 50, width: 100, height: 100)
        temp.backgroundColor = .systemBlue
        return temp
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(customView)
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        gesture.numberOfTapsRequired = 1
        customView.addGestureRecognizer(gesture)
    }
    
    @objc private func handleTap(_ sender: UITapGestureRecognizer) {
        print(sender.state)
    }
}
