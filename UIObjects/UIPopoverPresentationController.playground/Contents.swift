/*
 UIPopoverPresentationController is a class in UIKit for managing the presentation of popover-style views in iPad applications. It allows you to customize and control the appearance and behavior of popovers when presenting content such as menus, options, or additional information.

 Key features and responsibilities of UIPopoverPresentationController include:

 Presentation and Dismissal: It handles the presentation and dismissal of popover content. You can specify the source view, source rect, permitted arrow directions, and more to determine where and how the popover appears.
 Customization: You can customize various aspects of the popover's appearance, including its background color, arrow color, arrow size, and more.
 Delegate Methods: UIPopoverPresentationControllerDelegate provides delegate methods that allow you to control aspects of the popover's behavior and appearance.
 Adaptive Presentation: It supports adaptive presentation, which means that you can use popovers on both iPad and iPhones in specific contexts, adjusting the presentation style accordingly.
 */

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton(type: .system)
        button.setTitle("Show Popover", for: .normal)
        button.addTarget(self, action: #selector(showPopover), for: .touchUpInside)
        button.frame = CGRect(x: 50, y: 100, width: 200, height: 50)
        view.addSubview(button)
    }

    @objc func showPopover() {
        let contentViewController = UIViewController()
        contentViewController.view.backgroundColor = .white

        // Create a label for the popover content
        let label = UILabel()
        label.text = "Popover Content"
        label.frame = CGRect(x: 20, y: 20, width: 150, height: 30)
        contentViewController.view.addSubview(label)

        // Set up the popover presentation controller
        contentViewController.modalPresentationStyle = .popover
        contentViewController.preferredContentSize = CGSize(width: 200, height: 100)

        if let popoverController = contentViewController.popoverPresentationController {
            popoverController.sourceView = view
            popoverController.sourceRect = CGRect(x: 100, y: 100, width: 1, height: 1) // Adjust sourceRect as needed
            popoverController.permittedArrowDirections = .any
            popoverController.delegate = self
        }

        // Present the popover
        present(contentViewController, animated: true, completion: nil)
    }

    // MARK: - UIPopoverPresentationControllerDelegate

    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        // Return .none for popover-style presentation on iPhone
        return .none
    }
}
