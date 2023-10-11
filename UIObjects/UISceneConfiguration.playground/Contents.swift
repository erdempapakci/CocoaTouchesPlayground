/*
 Activation Policies: You can define activation conditions for different activation policies, such as user-initiated activation or system-initiated activation. Activation policies determine when and how a scene can become active.
 Conditions: Activation conditions are specified using UIUserNotificationSceneActivationCondition, which defines a set of conditions based on user notifications. These conditions include factors like time, location, or user interactions.
 Activation Rules: Activation conditions are evaluated against the user's device state and activity. If the conditions specified by UISceneActivationConditions are met, the associated scene can become active.
 Optimizing Resource Usage: Activation conditions can be used to optimize resource usage in your app. For example, you might delay the activation of a scene until the user is actively using the app or until specific conditions are met, reducing unnecessary background activity.
 */

import UIKit

//func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//   
//    if connectingSceneSession.role == UISceneSession.Role.windowApplication {
//          let config = UISceneConfiguration(name: nil, sessionRole: connectingSceneSession.role)
//          config.delegateClass = SceneDelegate.self
//          config.storyboard = UIStoryboard(name: "Main", bundle: nil)
//          return config
//      }
//      fatalError("Unhandled scene role \(connectingSceneSession.role)")
//}
