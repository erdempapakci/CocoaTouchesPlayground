/*
 UIWindowScene is a class introduced in iOS 13 as part of Apple's UIKit framework. It is a fundamental component of the modern app architecture for iOS. UIWindowScene is associated with a single scene in your app and represents the top-level container for your app's user interface.

 Key features and concepts related to UIWindowScene include:

 Scene-Based Architecture: With the introduction of iOS 13, Apple moved from an app-centric architecture to a scene-based architecture. Each scene in your app represents an independent instance of your app's user interface.
 Multi-Window Support: UIWindowScene enables the concept of multi-window support, allowing your app to have multiple windows, each associated with a UIWindowScene.
 Key Window: Each UIWindowScene has its own "key window" that can receive keyboard input and certain events. This means that you can have multiple key windows, each associated with a different scene in your app.
 Presentation and Management: UIWindowScene is responsible for presenting and managing the visual hierarchy of views within a specific scene. It controls the layout and presentation of your app's content within that scene.
 Lifecycle: A UIWindowScene has its own lifecycle, and it goes through various stages, such as activation and deactivation, which allow you to respond to changes in the scene's state.
 Configuration: You can configure a UIWindowScene to use specific settings, such as user interface style (light or dark mode) and window-level features.

 */

