/*
 UIStoryboard is a key component in Apple's UIKit framework used for designing the user interface of iOS and macOS applications. It allows developers to create and manage the various view controllers, scenes, and transitions that make up the user interface of an app graphically, without the need to write all the user interface code manually.

 Here are some key aspects and components of UIStoryboard:

 Interface Builder: UIStoryboard is typically used in conjunction with Interface Builder, which is part of Apple's integrated development environment (IDE) called Xcode. Interface Builder allows developers to visually design user interfaces by dragging and dropping UI elements onto canvas views.
 Scenes: A storyboard consists of one or more scenes, where each scene represents a view controller and its associated user interface. Scenes can be connected via segues to define navigation and transitions between different parts of the app.
 View Controllers: View controllers are the building blocks of an app's user interface. Each scene in a storyboard is associated with a view controller. Developers can customize and configure view controllers within the storyboard, including setting properties and connecting UI elements to code.
 Segues: Segues define the transitions between scenes. They specify how and when one scene transitions to another. Segues can be triggered by user actions (e.g., tapping a button) or programmatically in code.
 Storyboard IDs: Each scene in a storyboard can have a unique identifier called a "Storyboard ID." This ID is used to instantiate the associated view controller programmatically in code, which is useful when you need to navigate to a specific view controller within the storyboard.
 Storyboard References: In complex apps, storyboards can become large and unwieldy. To manage this complexity, you can use storyboard references to break up a storyboard into smaller, modular components, making it easier to work on different parts of the app's UI.
 Initial View Controller: In a storyboard, you designate one view controller as the "initial view controller." This is the view controller that is displayed when the app launches. Users typically start their journey through the app from this point.
 Storyboard Segue Identifier: When you create a segue between scenes, you can assign an identifier to it. This identifier is used in code to perform a segue programmatically, allowing for more precise control over navigation
 */
