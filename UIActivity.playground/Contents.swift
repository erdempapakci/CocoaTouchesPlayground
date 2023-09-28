// UIActivity is a class that provides a way to share content from your app with other apps. It can be used to share text, URLs, images, videos, and more. UIActivity is also able to add your app's own services alongside the others.


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create text content
        let text = "This is some text content."

        // Create a UIActivityViewController object
        let activityViewController = UIActivityViewController(activityItems: [text], applicationActivities: nil)

        // Present it to the user
        activityViewController.popoverPresentationController?.sourceView = self.view
        present(activityViewController, animated: true, completion: nil)
    }
}
