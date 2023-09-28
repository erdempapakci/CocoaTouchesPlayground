/*
UIBarButtonItemAppearance is a class introduced in iOS 15 and later as part of UIKit's modernized approach to customizing the appearance of bar button items in navigation bars and toolbars. It allows you to define and manage the visual style and behavior of bar button items throughout your iOS app.

Here's what UIBarButtonItemAppearance represents and how it's typically used:

1. Customization of Bar Button Items: UIBarButtonItemAppearance is used to customize the appearance of bar button items (UIBarButtonItem) within navigation bars, toolbars, and other user interface elements.

2. Composition-Based Configuration: It provides a composition-based approach to configuring the appearance of bar button items. You can define different appearance styles by composing elements like background colors, background images, title text attributes, button styles, and more.

3. Dynamic Adaptation: UIBarButtonItemAppearance is designed to adapt to system-wide changes, such as dark mode and accessibility settings. This ensures that your app's bar button items maintain a consistent and readable appearance.

4. Customization Points: You can customize various aspects of bar button items, including the appearance of plain, done, and back buttons, as well as button titles and symbols.

5. Scoped Configuration: Similar to UIBarAppearance, you can apply different appearance configurations to specific view controllers or view hierarchies within your app, allowing for granular control over the appearance of bar button items.

Here's an example of how to use UIBarButtonItemAppearance to customize the appearance of a bar button item:

*/

import UIKit

// Create a UIBarButtonItemAppearance instance.
let barButtonItemAppearance = UIBarButtonItemAppearance()

// Customize the appearance of plain buttons.
barButtonItemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.systemBlue]
barButtonItemAppearance.normal.backgroundEffect = UIBlurEffect(style: .regular)

// Customize the appearance of done buttons.
barButtonItemAppearance.done.titleTextAttributes = [.foregroundColor: UIColor.systemGreen]
barButtonItemAppearance.done.backgroundEffect = UIBlurEffect(style: .prominent)

// Apply the appearance to a UIBarButtonItem.
let barButtonItem = UIBarButtonItem(title: "Custom Button", style: .plain, target: self, action: #selector(buttonTapped))
barButtonItem.standardAppearance = barButtonItemAppearance

// Define the action method to handle button taps.
@objc func buttonTapped() {
    // Handle the button tap here.
}
