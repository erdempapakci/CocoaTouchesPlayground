/*
 Navigation Stack: UINavigationBar is closely associated with UINavigationController, which manages a stack of view controllers. The navigation bar displays the title, navigation buttons, and other navigation-related elements for the currently displayed view controller.
 Title: The navigation bar typically displays the title of the current view controller. You can set the title programmatically or through Interface Builder.
 Navigation Items: UINavigationItem objects are used to customize the appearance and behavior of the navigation bar for each view controller in the navigation stack. You can set the title, leftBarButtonItems, rightBarButtonItems, and other properties of the navigation item to control what's displayed in the navigation bar.
 Navigation Buttons: You can add buttons to the navigation bar on the left (leftBarButtonItems) and right (rightBarButtonItems) sides to perform actions such as going back, navigating forward, or triggering specific actions.
 Customization: UINavigationBar allows you to customize its appearance, including the background color, title text attributes, and bar button item appearance.
 Translucent and Transparent: The navigation bar can be made translucent or transparent, allowing content to be partially visible behind it. This can be useful for creating visually appealing user interfaces.
 */

final class CustomNavigationBar: UINavigationBar, UINavigationBarDelegate {
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        barStyle = .default
        backItem?.title = "Go Back"
        
    }
}
