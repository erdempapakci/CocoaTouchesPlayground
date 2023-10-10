/*
 
 UITextView is a subclass of UIView that allows users to enter and edit multi-line text. It is typically used to create text input fields, such as those used in forms and comments sections.

 UITextViews are created using the init() method. You can then set the various properties on the UITextView object, such as the text, font, and text color.

 To add a UITextView to your app, you need to add it to the view hierarchy. You can do this by adding it to the view controller's view or to a subview of the view controller's view.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let textView = UITextView()
        textView.text = "This is a text view."
        textView.font = UIFont.systemFont(ofSize: 16.0)
        textView.frame = CGRect(x: 20.0, y: 100.0, width: 250.0, height: 100.0)

        view.addSubview(textView)

    
    }
}
