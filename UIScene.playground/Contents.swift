
/*
 UIScenes were introduced in iOS 13 to provide a more modular and flexible approach to managing your app's user interface. With UIScenes, you can create multiple instances of your app's user interface, each with its own set of windows and views. This can be useful for implementing features such as multiple windows, split-screen mode, and multitasking.

 To create a UIScene, you call the requestSceneSessionActivation(_:userActivity:options:errorHandler:) method on the UIApplication object. This method will create a new UIScene object and activate it.

 Once a UIScene is activated, you can add windows and views to it. You do this by calling the addWindow(_:) method on the UIScene object.

 When a UIScene is no longer needed, you can deactivate it by calling the resignActive() method on it. This will cause the UIScene to be removed from the screen and its resources to be released.

 UIScenes are a powerful tool that can be used to create more modular and flexible user interfaces. By understanding how UIScenes work, you can create more responsive and engaging user experiences.

 Here are some examples of how UIScenes can be used in iOS apps:

 To implement multiple windows, such as a main window and a document window.
 To implement split-screen mode, such as displaying a list of documents on the left side of the screen and the selected document on the right side of the screen.
 To implement multitasking, such as allowing users to run multiple instances of your app at the same time.
 To implement custom user interfaces, such as a game interface or a media player interface.

 */

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Create a UIWindow and set it as the scene's window
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            self.window = window
            
            // Create and set the root view controller for the scene
            let viewController = ViewController()
            window.rootViewController = viewController
            
            window.makeKeyAndVisible()
        }
    }

    // Other UISceneDelegate methods...
}
