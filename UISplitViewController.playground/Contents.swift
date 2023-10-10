/*
 Master and Detail Views: A split view controller has two primary view controllers: the master view controller and the detail view controller. These two view controllers are typically displayed side by side on larger iPad screens.
 Collapsed and Expanded Modes: On smaller screens or in portrait orientation, the split view controller can automatically collapse into a navigation controller, with a button to toggle the master view's visibility. In expanded mode (landscape orientation on iPad), both the master and detail views are visible simultaneously.
 Delegate: You can set a delegate for the split view controller to respond to events and customize behavior. The delegate can help manage things like the display mode, hiding or showing the master view, and more.
 Display Modes: UISplitViewController supports different display modes:
 .automatic: Automatically chooses the best mode based on the device and orientation.
 .primaryHidden: Hides the primary (master) view in portrait mode.
 .primaryOverlay: Overlays the primary view on top of the detail view in portrait mode.
 .allVisible: Shows both the master and detail views at all times.
 Customization: You can customize the appearance of the split view controller, including the style of the navigation bars, bar button items, and more.
 */

import UIKit

class MasterViewController: UITableViewController {
    // Your master view controller implementation
    // This is where you would typically display a list of items.
}

class DetailViewController: UIViewController {
    // Your detail view controller implementation
    // This is where you would display detailed information about the selected item.
}


class ViewController: UISplitViewController, UISplitViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let masterVC = MasterViewController()
        let detailVC = DetailViewController()
        viewControllers = [masterVC, detailVC]
        delegate = self
    }
    func splitViewController(_ svc: UISplitViewController, willChangeTo displayMode: UISplitViewController.DisplayMode) {
        
        if displayMode == .automatic {
            print(svc)
        }
    }
    
}
