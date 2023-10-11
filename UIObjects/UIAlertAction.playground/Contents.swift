/*
UIAlertAction is a class in the UIKit framework that represents an action that can be taken in response to an alert or action sheet presented to the user. It's commonly used in conjunction with UIAlertController to create interactive and user-friendly dialogs in iOS apps.

Here's what UIAlertAction represents and how it's typically used:

1. User Action: UIAlertAction represents an action that the user can take in response to a presented alert or action sheet. Actions are typically displayed as buttons, and users can tap these buttons to perform specific tasks.

2. Title and Style: Each UIAlertAction has a title (the text displayed on the button) and a style that defines the appearance and behavior of the button. The style can be one of the following:
   - .default: Represents a standard action, often used for the most common or default choice.
   - .cancel: Represents a non-destructive action that allows users to cancel or dismiss the alert or action sheet.
   - .destructive: Represents a potentially destructive action, such as deleting data. These actions are often displayed in a distinct way to indicate their consequences.

3. Handler Block: You can attach a closure (handler) to each action. When the user taps the button associated with the action, the handler is executed. This allows you to define what should happen when the action is taken.

4. Creating Multiple Actions: You can create multiple UIAlertAction instances and add them to a UIAlertController to present a set of choices to the user. Each action represents a different option or response.

Here's a basic example of how to create and use UIAlertAction:
*/

import UIKit

// Create a UIAlertController.
let alertController = UIAlertController(title: "Alert Title", message: "Alert Message", preferredStyle: .alert)

// Create a UIAlertAction with a title, style, and handler.
let defaultAction = UIAlertAction(title: "OK", style: .default) { action in
    // Handle the "OK" button tap here.
    print("OK button tapped")
}

// Create a UIAlertAction with a "Cancel" style.
let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { action in
    // Handle the "Cancel" button tap here.
    print("Cancel button tapped")
}

// Create a UIAlertAction with a "Destructive" style.
let destructiveAction = UIAlertAction(title: "Delete", style: .destructive) { action in
    // Handle the "Delete" button tap here (potentially a destructive action).
    print("Delete button tapped")
}

// Add the actions to the UIAlertController.
alertController.addAction(defaultAction)
alertController.addAction(cancelAction)
alertController.addAction(destructiveAction)

// Present the UIAlertController.
// self.present(alertController, animated: true, completion: nil)
