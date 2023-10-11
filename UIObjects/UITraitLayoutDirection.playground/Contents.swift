import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Get the current trait collection
        let traitCollection = self.traitCollection

        // Check the layout direction
        switch traitCollection.layoutDirection {
        case .leftToRight:
            print("Layout direction is left-to-right.")
            // Adjust the layout for left-to-right languages
        case .rightToLeft:
            print("Layout direction is right-to-left.")
            // Adjust the layout for right-to-left languages
        case .unspecified:
            print("Layout direction is unspecified or unknown.")
            // Handle unspecified cases if necessary
        @unknown default:
            break
        }
    }
}
