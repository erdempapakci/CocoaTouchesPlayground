/*
UIButton is a fundamental class in UIKit that represents a clickable user interface element, often referred to as a "button." It allows users to trigger actions or events by tapping or interacting with it. Buttons are a crucial part of the user interface in iOS apps, providing a means for users to interact with the app's functionality.

Here's what you need to know about UIButton:

1. User Interaction: UIButton is designed to respond to user interactions, primarily taps. When a user taps a button, it triggers a specified action or event, making it a key component for user engagement and interaction.

2. Visual Customization: You can customize the appearance of a button by setting properties such as its title, background color, text color, font, and more. This allows you to create buttons that match your app's design and branding.

3. States: Buttons have different states, such as normal, highlighted, disabled, and selected. You can configure the appearance of the button for each state. For example, you might change the button's color or text when it's tapped or disabled.

4. Actions: You can associate a target-action pair with a button, specifying which method should be called when the button is tapped. This allows you to define the behavior that should occur when the button is interacted with.

5. Event Handling: Buttons can be set up to handle different types of touch events, including touch down, touch up inside, touch up outside, and more. This gives you fine-grained control over how your button responds to user input.

6. Accessibility: iOS provides built-in accessibility features, and buttons can be made accessible by setting properties like accessibility label and hint. This ensures that users with disabilities can interact with your app effectively.

Here's a simple example of how to create and use a UIButton:

*/

import UIKit

class MyViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a UIButton with a specific frame.
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 40))
        
        // Customize the button's appearance.
        button.setTitle("Tap Me", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.backgroundColor = .lightGray
        
        // Add a target-action pair to handle button tap.
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        // Add the button to the view hierarchy.
        view.addSubview(button)
    }
    
    // Action method to handle button tap.
    @objc func buttonTapped() {
        print("Button tapped!")
        // Add your desired functionality here.
    }
}
