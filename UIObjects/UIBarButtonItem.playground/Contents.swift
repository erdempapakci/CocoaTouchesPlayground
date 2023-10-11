/*
UIBarButtonItem is a class in UIKit that represents a button or custom view typically placed in a navigation bar, toolbar, or other user interface elements. It allows you to add interactive elements to your iOS app's user interface, such as buttons, action triggers, and custom views.

Here's what UIBarButtonItem represents and how it's typically used:

1. Interactive Elements: UIBarButtonItem is used to create interactive elements like buttons and custom views in iOS user interfaces. It's commonly used in navigation bars and toolbars to trigger actions or navigate within an app.

2. Versatility: It offers versatility by allowing you to create different types of bar button items, including standard buttons, system buttons (with predefined icons), custom views, and flexible space items for layout control.

3. Target-Action Pattern: UIBarButtonItem is often configured with a target and action, defining what happens when the button or view is tapped. The target is an object that will receive a specified action when the button is tapped.

4. Integration with Navigation and Toolbars: It's commonly used with UINavigationBar and UIToolbar to provide navigation and control options in iOS apps. You can add bar button items to these bars to enable common actions like navigation back, sharing, and more.

5. Customization: UIBarButtonItem can be customized with titles, images, styles, and other attributes to match your app's design and functionality.

Here's an example of how to create a UIBarButtonItem and add it to a navigation bar:

*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toolbar: UIToolbar!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a UIBarButtonItem
        let saveButton = UIBarButtonItem(title: "Save", style: .plain, target: self, action: #selector(saveButtonTapped))

        // Add the UIBarButtonItem to the toolbar
        toolbar.items = [saveButton]
    }

    @objc func saveButtonTapped() {
        // Save something
    }
}
