/*
UIBarItem is an abstract base class in UIKit that represents an item within a bar, such as a bar button item in a navigation bar or toolbar. It's a fundamental component used for creating interactive and non-interactive elements in navigation bars, toolbars, and tab bars in iOS apps. While UIBarItem itself cannot be instantiated, it serves as the base class for several concrete subclasses, each tailored for specific use cases.

Here's what you need to know about UIBarItem:

1. Abstract Base Class: UIBarItem is not meant to be instantiated directly but instead serves as the foundation for concrete subclasses like UIBarButtonItem, UITabBarItem, and UINavigationItem. These subclasses provide specific functionality and appearance tailored for different types of bars and navigation elements.

2. Customization and Configuration: Concrete subclasses of UIBarItem offer various customization options and properties, allowing you to configure the appearance, behavior, and content of items within bars. For example, you can set titles, images, actions, and more.

3. Interaction and User Interface: Items derived from UIBarItem can be interactive, such as a tapable button, or non-interactive, such as a label or image. They are used to provide navigation, actions, or information within your app's user interface.

4. Placement in Bars: Depending on the concrete subclass, UIBarItem instances can be placed in different types of bars, such as navigation bars, toolbars, and tab bars. They are used to construct the user interface and provide essential functionality.

Here's a basic example of how you might use a UIBarButtonItem, which is a concrete subclass of UIBarItem, to create a button in a navigation bar:

*/

import UIKit

class MyViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a UIBarButtonItem with a title and associated action.
        let myButton = UIBarButtonItem(title: "Action", style: .plain, target: self, action: #selector(buttonTapped))
        
        // Set the created button as the right bar button item of the navigation item.
        navigationItem.rightBarButtonItem = myButton
    }
    
    @objc func buttonTapped() {
        // Handle the button tap here.
    }
}
