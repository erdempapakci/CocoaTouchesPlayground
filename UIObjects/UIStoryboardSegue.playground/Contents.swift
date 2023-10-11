/*
 UIStoryboardSegue is a class in Apple's UIKit framework that represents a transition from one view controller to another in an iOS app. It's commonly used to define and manage the flow of a user interface in response to user actions, such as tapping a button or selecting a table view cell. Segues are a fundamental concept in iOS app development for managing navigation and transitions between view controllers.

 Here are some key points about UIStoryboardSegue:

 Purpose: UIStoryboardSegue is used to define the relationship between two view controllers in Interface Builder (Storyboard or XIB) and specify how the app should transition from one view controller to another.
 Storyboard Segues: In Interface Builder, you can create segues by control-dragging from one view controller to another. These segues are instances of UIStoryboardSegue or its subclasses.
 Identifier: Each segue has an optional identifier, which is a string that you can assign in Interface Builder. This identifier allows you to distinguish between different segues that originate from the same source view controller.
 Subclasses: UIStoryboardSegue is an abstract class, and you typically use its subclasses to define the specific type of transition you want:
 UIStoryboardSegue (the base class)
 UIStoryboardSeguePush (for pushing a view controller onto a navigation stack)
 UIStoryboardSeguePop (for popping a view controller from a navigation stack)
 UIStoryboardSegueModal (for presenting a view controller modally)
 Custom subclasses you create for custom transitions
 Performing Segues Programmatically: You can trigger segues programmatically in response to user actions or other events using the performSegue(withIdentifier:sender:) method of a view controller. You specify the segue's identifier in this method call.
 Preparing for Segue: You can override the prepare(for:sender:) method in your source view controller to pass data or perform setup before the segue occurs. This method is called just before the destination view controller is presented.
 */
