
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let traitCollection = self.traitCollection
        if traitCollection.userInterfaceStyle == .dark {
               // Update the interface to use a dark color scheme
               self.view.backgroundColor = .black
              
           } else {
               // Update the interface to use a light color scheme
               self.view.backgroundColor = .blue
              
           }
    }
   
}
