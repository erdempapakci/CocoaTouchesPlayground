/*
 
 Navigation Stack: The primary purpose of a navigation controller is to manage a stack of view controllers. Each view controller represents a screen or view within your app. The navigation controller keeps track of the order in which these view controllers are presented.
 Push and Pop: You can "push" view controllers onto the navigation stack to navigate forward in your app's hierarchy. Conversely, you can "pop" view controllers from the stack to navigate back.
 Navigation Bar: A navigation controller typically has a navigation bar at the top of the screen. The navigation bar displays a title and navigation buttons (e.g., back and forward) to facilitate navigation.
 Customization: You can customize the appearance and behavior of the navigation bar, including setting titles, adding navigation buttons, and changing the bar's appearance.
 View Controller Hierarchy: The navigation controller maintains a hierarchy of view controllers. The top view controller on the stack is the one currently visible to the user.
 Animation: UINavigationController provides built-in push and pop animations, creating a visually appealing transition between screens.
 */

import UIKit
class MyViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
    }
}
class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
    }
}
final class CustomNavigationController: UINavigationController {
    
    private let firstVC = MyViewController()
    private let secondVC = SecondViewController()
   
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        viewControllers = [firstVC]
      
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    func pushGreenVC() {
      
        self.pushViewController(secondVC, animated: false)
    }
    
    
    
}
