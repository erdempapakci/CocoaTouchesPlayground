import UIKit

/*
UIActionSheet is a class in the UIKit framework that was available in earlier versions of iOS but has been deprecated as of iOS 8 (as of my last knowledge update in September 2021). It was used to present a list of options or actions to the user in the form of a popup sheet, typically from a toolbar or a button. Here's what UIActionSheet represented and how it was used:

1. List of Actions: UIActionSheet allowed you to present a list of actions or options to the user. Each option was represented as a button on the sheet.

2. Deprecated: It's important to note that UIActionSheet has been deprecated in favor of UIAlertController starting from iOS 8. Therefore, it's recommended to use UIAlertController for similar functionality in modern iOS apps.

Here's a basic example of how UIActionSheet was used in older iOS versions:
*/
class ViewController: UIViewController, UIActionSheetDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: .system)
        button.setTitle("Show Action Sheet", for: .normal)
        button.addTarget(self, action: #selector(showActionSheet), for: .touchUpInside)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        
        view.addSubview(button)
    }
    
    @objc func showActionSheet() {
        let actionSheet = UIActionSheet(title: "Select an Option", delegate: self, cancelButtonTitle: "Cancel", destructiveButtonTitle: nil, otherButtonTitles: "Option 1", "Option 2", "Option 3")
        actionSheet.delegate = self
        actionSheet.show(in: view)
    }
    
    func actionSheet(_ actionSheet: UIActionSheet, clickedButtonAt buttonIndex: Int) {
        // Handle button clicks here
        if buttonIndex == actionSheet.cancelButtonIndex {
            print("Cancel button clicked")
        } else {
            print("Button \(buttonIndex) clicked")
        }
    }
}
