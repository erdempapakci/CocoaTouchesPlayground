/*
 
UICommand is a class in UIKit introduced in iOS 13 and macOS 11 (Big Sur) for defining and managing app commands, which are actions that users can trigger via menus, toolbars, keyboard shortcuts, or other input methods. UICommand is part of the AppKit framework on macOS and the UIKit framework on iOS.

Key points about UICommand:

1. Command-Based User Interface: UICommand is designed to facilitate command-based user interfaces, allowing you to define discrete actions that users can perform within your app. These actions can be triggered from various UI elements, such as menus, toolbars, and keyboard shortcuts.

2. Hierarchical Structure: UICommand instances can be organized hierarchically into groups and menus, creating a structured and user-friendly command hierarchy. This is particularly useful for apps with complex command sets.

3. Target-Action Mechanism: You associate target-action pairs with UICommand instances, defining the code that should run when a command is invoked. This allows you to perform specific actions when a user selects a command.

4. Localization: UICommand supports localization, enabling you to provide localized titles and keyboard shortcuts for commands to accommodate users from different regions and languages.

5. Keyboard Shortcuts: UICommand can be associated with keyboard shortcuts, making it easy for users to trigger commands using key combinations. The system handles keyboard shortcut registration and conflict resolution.

6. Accessibility: UICommand integrates with accessibility features, ensuring that users with disabilities can access and use your app's commands effectively.

7. Platform Integration: While UICommand is available on both iOS and macOS, the way commands are presented may differ between the two platforms. On iOS, commands are typically shown in a contextual menu, while on macOS, they are often displayed in the app's menu bar.

Here's a basic example of how to create and use a UICommand in Swift:

*/

import UIKit

class ViewController3: UIViewController, UIContextMenuInteractionDelegate {
    func contextMenuInteraction(_ interaction: UIContextMenuInteraction, configurationForMenuAtLocation location: CGPoint) -> UIContextMenuConfiguration? {
        
        return UIContextMenuConfiguration(identifier: nil, previewProvider: nil) { suggestedActions in
            return self.makeContextMenu()
        }
        
    }
    
   
    
    private lazy var viewForContextMenu: UIView = {
       let temp = UIView()
        temp.backgroundColor = .red
        return temp
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewForContextMenu.frame = .init(x: 100, y: 100, width: 150, height: 150)
        view.addSubview(viewForContextMenu)
   
        let interaction = UIContextMenuInteraction(delegate: self)
        viewForContextMenu.addInteraction(interaction)
    }
    @objc func deleteAll() {
        
    }
   
    func makeContextMenu() -> UIMenu {
     
        let delete = UICommand(title: "Delete",  action: #selector(deleteAll))
     
        let edit = UIMenu(title: "Edit...", children: [delete])
      
        return edit
    }
}


















