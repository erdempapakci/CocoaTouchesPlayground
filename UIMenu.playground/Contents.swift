
/*
 Hierarchical Structure: Menus in iOS can have a hierarchical structure, with submenus containing additional menu items. This allows you to organize and categorize related actions.
 Menu Items: Each UIMenu consists of one or more UIMenuElement objects, which represent individual menu items or submenus. These menu elements can be of various types, including text-based actions, toggle actions, or submenus.
 Customization: You can customize the appearance of menu items, including their titles, images, and states. You can also enable or disable items based on the app's current state.
 System Integration: UIMenu is integrated with system features such as keyboard shortcuts (if supported), accessibility, and haptic feedback.
 Activation: Menus are typically activated in response to user gestures, such as long-press gestures on buttons or other UI elements. You can also manually present menus using the UIMenuController class.
 */
import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a menu item with a title and an action
        let menuItem = UIAction(title: "Share", image: UIImage(systemName: "square.and.arrow.up")) { action in
            // Perform the action when the menu item is selected
            self.share()
        }

        // Create a UIMenu with the menu item
        let menu = UIMenu(title: "Options", children: [menuItem])

        // Create a UIButton to trigger the menu
        let button = UIButton(type: .system)
        button.setTitle("Show Menu", for: .normal)
        button.addTarget(self, action: #selector(showMenu), for: .touchUpInside)
        button.frame = CGRect(x: 100, y: 100, width: 150, height: 40)
        view.addSubview(button)

        // Set the menu as the context menu for the button
        button.menu = menu
    }

    @objc func showMenu() {
        // This method can be used to manually present the menu, e.g., in response to a button tap
    }

    func share() {
        // Implement the sharing logic here
    }
}
