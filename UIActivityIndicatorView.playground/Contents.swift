// UIActivityIndicatorView is a view that displays a spinning indicator to show that a task is in progress.

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a UIActivityIndicatorView object
        let activityIndicatorView = UIActivityIndicatorView(style: .medium)
        activityIndicatorView.frame = view.frame
        // Add it to the view hierarchy
        self.view.addSubview(activityIndicatorView)

        // Start animating the indicator
        activityIndicatorView.startAnimating()

        // Perform your task here

        // Stop animating the indicator when the task is complete
    activityIndicatorView.stopAnimating()
    }
}
