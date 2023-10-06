/*
 UIPasteboard supports various types of data, including text, images, URLs, and custom data types. It's commonly used to facilitate the exchange of data between different parts of an app or between different apps.

 Key properties and methods of UIPasteboard include:

 general: A class property representing the general pasteboard, which is available to all apps and can be used for common clipboard operations.
 name: The name of a pasteboard. You can create named pasteboards to share data within your app or between app extensions.
 setObjects(_:): A method for setting the objects to be copied to the pasteboard. You can pass an array of items conforming to the NSItemProviderWriting protocol.
 setString(_:): A method for setting a string to the pasteboard.
 setURL(_:): A method for setting a URL to the pasteboard.
 setImages(_:): A method for setting images to the pasteboard.
 setItems(_:): A method for setting a collection of items to the pasteboard. This is useful for copying multiple representations of data.
 string: A property that returns the string currently on the pasteboard.
 URL: A property that returns the URL currently on the pasteboard.
 images: A property that returns images currently on the pasteboard.
 items: A property that returns an array of items currently on the pasteboard.
 */

import UIKit

class PasteViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a "Copy" button
        let copyButton = UIButton(type: .system)
        copyButton.setTitle("Copy to Clipboard", for: .normal)
        copyButton.addTarget(self, action: #selector(copyToClipboard), for: .touchUpInside)
        copyButton.frame = CGRect(x: 50, y: 100, width: 200, height: 40)
        view.addSubview(copyButton)
        
        // Create a "Paste" button
        let pasteButton = UIButton(type: .system)
        pasteButton.setTitle("Paste from Clipboard", for: .normal)
        pasteButton.addTarget(self, action: #selector(pasteFromClipboard), for: .touchUpInside)
        pasteButton.frame = CGRect(x: 50, y: 200, width: 200, height: 40)
        view.addSubview(pasteButton)
    }

    @objc func copyToClipboard() {
        let textToCopy = "Hello, Clipboard!"
        
        // Access the general pasteboard
        let pasteboard = UIPasteboard.general
        
        // Set the string to the pasteboard
        pasteboard.string = textToCopy
        
        // Optionally, you can also set other types of data, such as URLs or images
        // pasteboard.URL = myURL
        // pasteboard.images = [myImage]
    }
    
    @objc func pasteFromClipboard() {
        // Access the general pasteboard
        let pasteboard = UIPasteboard.general
        
        // Retrieve the string from the pasteboard
        if let copiedString = pasteboard.string {
            // Use the copiedString as needed
            print("Pasted string: \(copiedString)")
        }
    }
}
