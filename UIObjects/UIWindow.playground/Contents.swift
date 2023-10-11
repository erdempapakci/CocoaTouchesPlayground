
/*
 UIWindow is a fundamental class in Apple's UIKit framework for iOS that represents a graphical window in which content can be drawn. It serves as the top-level container for your app's user interface and is responsible for displaying and managing the content of your app on the screen.

 Key features and concepts related to UIWindow include:

 Top-Level Container: UIWindow is the root of the view hierarchy in an iOS app. It is the first responder to touch events and provides the backdrop for all other user interface elements.
 Presentation: UIWindow is responsible for presenting and managing the visual hierarchy of views within your app. It controls the order in which views are drawn on the screen.
 Key Window: There can be multiple windows in an app, but one window is designated as the "key window," which receives keyboard input and certain events. By default, the window created by the app delegate is the key window.
 Screen Coordinates: UIWindow defines the coordinate system for the app's user interface, with the origin (0,0) at the top-left corner of the screen.
 Subview Management: You can add, remove, and manage subviews within a UIWindow to create your app's user interface.
 Orientation and Size: UIWindow automatically handles screen rotation and resizing, adjusting the layout of your app's views to fit the screen's size and orientation.
 Presentation: In addition to displaying the main user interface, windows can be used to present other content, such as pop-up alerts or modal view controllers.
 */
import UIKit

//@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Create a UIWindow
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // Create a root view controller
        let rootViewController = UIViewController()
        rootViewController.view.backgroundColor = .white
        
        // Set the root view controller for the window
        window?.rootViewController = rootViewController
        
        // Make the window key and visible
        window?.makeKeyAndVisible()
        
        return true
    }
}
