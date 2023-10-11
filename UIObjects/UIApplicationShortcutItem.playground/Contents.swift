/*
UIApplicationShortcutItem is a class in iOS that represents a dynamic home screen quick action or shortcut introduced in iOS 9 and later. These shortcuts allow users to quickly access specific features or content within your app directly from the home screen by long-pressing the app icon.

Here's what UIApplicationShortcutItem represents and how it's typically used:

1. Quick Actions: UIApplicationShortcutItem represents a quick action that appears when a user long-presses an app icon on the home screen or uses 3D Touch (on devices that support it). These quick actions provide shortcuts to specific tasks or content within your app.

2. Icon and Title: Each quick action is associated with an icon and a title. The icon is typically a system-provided symbol representing the action, and the title briefly describes the action.

3. User Interaction: When a user selects a quick action, your app is launched, and your app delegate's `application(_:performActionFor:completionHandler:)` method is called. This method allows you to determine which quick action was selected and respond accordingly.

4. Static vs. Dynamic Actions: You can define quick actions statically in your app's Info.plist file or dynamically at runtime. Dynamic actions are often used to provide context-specific shortcuts based on app data or user preferences.

5. Compatibility: While quick actions are a valuable feature, not all devices support 3D Touch. Therefore, it's essential to provide alternative access to the same features within your app.

Here's an example of how to define a dynamic UIApplicationShortcutItem:
*/

import UIKit


class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // Create a shortcut item
       
        let shortcutItem = UIApplicationShortcutItem(type: "ada", localizedTitle: "ada")
     
        // Add the shortcut item to the app's shortcut items list
        application.shortcutItems?.append(shortcutItem)
        

        return true
    }

    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {

        // Implement the functionality of the shortcut item
        switch shortcutItem.type {
        case "myShortcutItemType":
            // Do something
            break
        default:
            break
        }

        completionHandler(true)
    }

  

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}
