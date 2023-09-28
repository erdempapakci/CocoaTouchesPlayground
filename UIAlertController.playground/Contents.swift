/*
UIAlertController is a fundamental class in the UIKit framework that allows you to display alerts and action sheets in your iOS applications. It provides a way to present important information to the user or solicit their input through a variety of predefined styles.

Here's what UIAlertController represents and how it's typically used:

1. Alerts and Action Sheets: UIAlertController can be used to display two main types of dialogs:
   - Alerts: These are used to present critical information, warnings, or decisions that require user acknowledgment.
   - Action Sheets: These provide a set of options or actions related to the current context. Action sheets often appear as a popover on iPad and a modal view on iPhone.

2. Title and Message: You can specify a title and an optional message for the alert or action sheet. The title typically describes the purpose of the dialog, while the message provides additional information.

3. Actions: You can add one or more UIAlertAction objects to the UIAlertController. Each action represents a button or choice that the user can tap. Actions can have different styles, such as default, cancel, or destructive.

4. Handler Blocks: When the user selects an action, the associated handler block is executed. This allows you to define what should happen when a specific action is taken.

5. Presentation Style: You can specify the style of the presentation, which can be either .alert (for alerts) or .actionSheet (for action sheets). The style determines how the dialog is displayed on the screen.

6. Customization: You can further customize the appearance and behavior of the alert or action sheet by specifying properties like preferred action, text fields, and the popover source view and arrow direction (for action sheets on iPad).

Here's a basic example of how to create and present an UIAlertController:
*/

import UIKit

// Create a UIAlertController with a title, message, and preferred style.
let alertController = UIAlertController(title: "Alert Title", message: "This is a message.", preferredStyle: .alert)

// Create an UIAlertAction with a title and style.
let okAction = UIAlertAction(title: "OK", style: .default) { action in
    // Handle the "OK" button tap here.
    print("OK button tapped")
}

// Add the UIAlertAction to the UIAlertController.
alertController.addAction(okAction)

// Present the UIAlertController.
// self.present(alertController, animated: true, completion: nil)
