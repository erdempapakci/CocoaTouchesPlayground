/*
UIBarAppearance is a class introduced in iOS 15 and later as part of UIKit's modernized approach to customizing the appearance of navigation bars and toolbars. It allows you to define and manage the visual style and behavior of navigation bars and toolbars in your iOS app.

Here's what UIBarAppearance represents and how it's typically used:

1. Customization of Bars: UIBarAppearance is used to customize the appearance of navigation bars (UINavigationBar) and toolbars (UIToolbar) throughout your app.

2. Composition-Based Configuration: It provides a composition-based approach to configuring bar appearances. You can define different appearance styles by composing elements like background colors, background images, title text attributes, button styles, and more.

3. Dynamic Adaptation: UIBarAppearance is designed to adapt to system-wide changes such as dark mode and accessibility settings. This ensures that your app's bars maintain a consistent and readable appearance.

4. Customization Points: You can customize various aspects of bars, including background color, background image, shadow color, title text attributes (font, color, etc.), button appearance, and more.

5. Scoped Configuration: You can apply different appearance configurations to specific view controllers or view hierarchies within your app, allowing for granular control over the appearance of bars.

Here's an example of how to use UIBarAppearance to customize the appearance of a navigation bar:

*/

import UIKit

// Create a UIBarAppearance instance.
let barAppearance = UINavigationBarAppearance()

// Customize the appearance.
barAppearance.configureWithOpaqueBackground() // Configure with an opaque background
barAppearance.backgroundColor = .systemBlue // Set the background color
barAppearance.titleTextAttributes = [.foregroundColor: UIColor.white] // Customize title text attributes

// Apply the appearance to a navigation bar.
let navigationController = UINavigationController()
navigationController.navigationBar.standardAppearance = barAppearance
navigationController.navigationBar.scrollEdgeAppearance = barAppearance

// Push a view controller onto the navigation stack.
let viewController = UIViewController()
viewController.title = "Customized Navigation Bar"
navigationController.pushViewController(viewController, animated: true)
