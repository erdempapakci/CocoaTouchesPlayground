
import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a UIButton to initiate printing
        let printButton = UIButton(type: .system)
        printButton.setTitle("Print Document", for: .normal)
        printButton.addTarget(self, action: #selector(printDocument), for: .touchUpInside)
        printButton.frame = CGRect(x: 50, y: 100, width: 200, height: 50)
        view.addSubview(printButton)
    }

    @objc func printDocument() {
        // Create a UIPrintFormatter or UIPrintPageRenderer to format the content to be printed

        // Create a UIPrintInfo object to specify print settings
        let printInfo = UIPrintInfo.printInfo()
        printInfo.outputType = .general
        printInfo.jobName = "MyPrintJob"

        // Create a UIPrintInteractionController
        let printController = UIPrintInteractionController.shared
        printController.printInfo = printInfo

        // Configure printController with the print formatter/renderer and other settings

        // Present the print dialog to the user
        printController.present(from: self.view.bounds, in: self.view, animated: true) { (controller, completed, error) in
            if completed {
                print("Printing completed successfully")
            } else if let error = error {
                print("Printing failed with error: \(error.localizedDescription)")
            } else {
                print("Printing was canceled")
            }
        }
    }
}
