
/*
 Scene Configuration: A UISceneSession contains information about the scene's configuration, which includes details about the scene's user interface and behavior. This configuration is defined by a UISceneConfiguration object.
 Identifier: Each UISceneSession has a unique identifier that distinguishes it from other sessions. This identifier is assigned by the system and is used to manage and activate scenes.
 Role: A UISceneSession has a role that defines its purpose. Common roles include .application, .window, and .detachable. The role determines how the scene behaves and what it represents within the app.
 State Restoration: You can use UISceneSession to support state restoration in your app. It allows you to save and restore the state of scenes, ensuring that users can return to their previous interactions and content.
 Delegate Callbacks: You can implement delegate methods in your app's scene delegate to respond to events related to scene sessions. For example, you can handle session activation, deactivation, and state restoration.
 */

import UIKit

//func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
//    
//    guard let windowScene = (scene as? UIWindowScene) else { return }
//    window?.windowScene = windowScene
//    if #available(iOS 17, *) {
//       
//        let vc = ViewController()
//        window?.rootViewController = vc
//    } else {
//        // Fallback on earlier versions
//    }
//    
//    window?.makeKeyAndVisible()
//    
//    
//}
