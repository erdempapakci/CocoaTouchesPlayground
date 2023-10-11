import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Get the current trait collection
        let traitCollection = self.traitCollection

        // Check the force touch capability
        switch traitCollection.forceTouchCapability {
        case .unknown:
            print("Force touch capability is unknown or unsupported.")
        case .available:
            print("Force touch capability is available.")
            // You can enable force touch-related features here
        case .unavailable:
            print("Force touch capability is unavailable.")
            // You may want to provide alternative interactions for devices without force touch
        @unknown default:
            break
        }
    }
}
