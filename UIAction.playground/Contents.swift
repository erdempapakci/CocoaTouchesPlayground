/*
UIAction is a class introduced in iOS 13 and later (as of my last knowledge update in September 2021) that is part of the UIKit framework. It is used to represent actions that can be associated with UI controls like buttons, menus, and other interactive elements in your iOS app. Here's what UIAction represents and how it is used:

1. Action Definition: UIAction is used to define an action or behavior that should occur when a user interacts with a UI control. This action can be triggered by user gestures like tapping a button or selecting a menu item.

2. Closure-Based: Actions are often defined using closures (also known as blocks in Objective-C). You provide a closure that contains the code to be executed when the action is triggered.

3. Customization: You can customize actions with various attributes, including the action's title (the text that appears to the user), image (an optional icon), and other properties. This allows you to create interactive elements with specific behaviors and appearances.

4. Hierarchical Menus: Actions are commonly used in hierarchical menus. You can create multi-level menus where each menu item corresponds to a UIAction. This is useful for organizing and presenting a range of options to the user.

5. Accessibility: Actions can be associated with accessibility features, ensuring that users with disabilities can interact with your app effectively.

Here's a basic example of how to create a UIAction in Swift:
*/

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a UIAction with a closure
        let action = UIAction(title: "Tap Me") { [weak self] _ in
            self?.handleTap()
        }
        
        // Create a UIButton and associate the action with it
        let button = UIButton(type: .system)
        button.addAction(action, for: .touchUpInside)
        button.setTitle("Tap Me", for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        
        // Add the button to the view
        view.addSubview(button)
    }
    
    func handleTap() {
        print("Button tapped!")
    }
}
