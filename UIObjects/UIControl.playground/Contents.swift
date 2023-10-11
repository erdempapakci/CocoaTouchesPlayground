/*
 UIControl is a fundamental class in UIKit on iOS that provides a base for a variety of user interface elements that can be interacted with by the user. It is part of the UIControl class hierarchy and is a subclass of UIView. UIControl is often used as a base class for interactive UI elements such as buttons, switches, sliders, and more.

 Here are some key attributes and behaviors associated with UIControl:

 User Interaction: UIControl manages user interaction and sends actions in response to specific events like touch, value change, or editing end.
 Events: UIControl elements can generate actions (events) in response to user interactions. These events are associated with specific actions that can be defined in your code. Common events include .touchUpInside, .valueChanged, .editingChanged, and more.
 Target-Action: UIControl uses a target-action mechanism for handling events. You can specify a target (usually an object) and a selector (a method) to be called when the control generates an event. When the event occurs, UIControl sends the action message to the target.
 State: UIControl elements can have different states (normal, highlighted, selected, etc.), and you can customize their appearance for each state. For example, a UIButton can have different text or images for its normal and highlighted states.
 Accessibility: UIControl provides built-in accessibility support, making it easier for users with disabilities to interact with your app's UI.

 */
