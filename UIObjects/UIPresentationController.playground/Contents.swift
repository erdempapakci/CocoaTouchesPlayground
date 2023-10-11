/*
 UIPresentationController is a powerful and flexible class in UIKit for customizing the presentation and behavior of view controllers. It allows you to define how a view controller is presented on the screen, including aspects such as its size, transition animations, and interaction behavior. UIPresentationController is particularly useful when you need to create custom modal presentations, popovers, and other non-standard presentation styles.

 Key responsibilities and capabilities of UIPresentationController include:

 Presentation Style: You can customize the presentation style of a view controller, specifying how it appears on the screen. This includes full-screen, form sheet, popover, custom shapes, and more.
 Presentation and Dismissal: It handles the actual presentation and dismissal of the view controller, allowing you to control the animations and timing.
 Size and Layout: You can customize the size and layout of the presented view controller's view. This includes defining its frame, adjusting its content insets, and more.
 Transition Animations: You can define custom transition animations for the presentation and dismissal of the view controller. This is useful for creating unique and visually appealing user experiences.
 Interaction Behavior: You can control user interactions while the presented view controller is on screen, specifying whether interactions with the background should be disabled or allowed.
 Delegate Methods: UIPresentationControllerDelegate provides methods to customize the presentation and dismissal behavior further.
 */

import UIKit

final class CustomPresentationController: UIPresentationController {
    override var frameOfPresentedViewInContainerView: CGRect {
        return .init(x: 50, y: 400, width: 300, height: 200)
    }
    override func presentationTransitionWillBegin() {
           // Perform any setup before the presentation begins
       }

       override func presentationTransitionDidEnd(_ completed: Bool) {
           // Perform any cleanup after the presentation ends
       }

       override func dismissalTransitionWillBegin() {
           // Perform any setup before the dismissal begins
       }

       override func dismissalTransitionDidEnd(_ completed: Bool) {
           // Perform any cleanup after the dismissal ends
       }

       override func containerViewWillLayoutSubviews() {
           // Layout adjustments for the containerView
       }
}
