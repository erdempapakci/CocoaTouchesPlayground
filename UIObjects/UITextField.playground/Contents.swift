/*
 Text Input: UITextField allows users to enter and edit text. It's often used for various input tasks like entering names, email addresses, passwords, search queries, and more.
 Keyboard Types: You can specify the keyboard type for a UITextField, which determines the type of keyboard that appears when the user taps on it. For example, you can choose a default keyboard, a numeric keypad, or specialized keyboards like email or phone number keyboards.
 Secure Text Entry: UITextField supports secure text entry, which means you can use it for password fields where the text is hidden as the user types, replacing characters with dots or asterisks.
 Input Accessory Views: You can add custom views to the top or bottom of the keyboard as an input accessory view to provide additional functionality or navigation options.
 Delegates: UITextField can have a delegate (conforming to the UITextFieldDelegate protocol) that allows you to respond to various events, such as text changes, editing, and return key presses.
 Text Validation: You can use the delegate to validate text input, restrict character input, and perform other custom text processing tasks.
 Placeholder Text: You can set a placeholder text that provides a hint or example of what the user should enter in the text field. The placeholder text disappears as soon as the user begins typing.
 Text Alignment and Styling: You can control the text alignment (left, center, right) and text styling (font, color, etc.) of the text within the UITextField.
 Autocorrection and Autocapitalization: You can enable or disable autocorrection and autocapitalization features based on your application's requirements.
 Clear Button: A clear button can be displayed within the UITextField to allow the user to quickly clear the text.
 Accessibility: UITextField provides accessibility features to ensure that users with disabilities can interact with it effectively.
 */
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        // Create a UITextField
        let textField = UITextField(frame: CGRect(x: 20, y: 100, width: 200, height: 30))
        textField.placeholder = "Enter text here"
        textField.borderStyle = .roundedRect
        textField.delegate = self // Set the delegate to respond to events
        
        // Add the UITextField to the view
        view.addSubview(textField)
    }
    
    // UITextFieldDelegate methods
    func textFieldDidEndEditing(_ textField: UITextField) {
        // Handle text field editing events here
        if let text = textField.text {
            print("User entered: \(text)")
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Dismiss the keyboard when the return key is pressed
        textField.resignFirstResponder()
        return true
    }
}


