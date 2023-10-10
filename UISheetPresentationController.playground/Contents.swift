
/*
 UISheetPresentationController is a part of UIKit introduced in iOS 15. It's used to present a view controller as a sheet on iPad or in compact width environments on other devices. Sheets are a common UI pattern that allows you to present content in a modal way that slides up from the bottom of the screen.
 */
import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(type: .system)
        button.setTitle("Show Sheet", for: .normal)
        button.addTarget(self, action: #selector(showSheet), for: .touchUpInside)
        button.frame = CGRect(x: 50, y: 100, width: 200, height: 50)
        view.addSubview(button)
    }
    
    @objc func showSheet() {
        let contentViewController = UIViewController()
        contentViewController.view.backgroundColor = .white
        contentViewController.title = "Sheet Content"
        
        let sheetController = UINavigationController(rootViewController: contentViewController)
        
        // Create a UISheetPresentationController
        if let sheetPresentationController = sheetController.presentationController as? UISheetPresentationController {
            sheetPresentationController.detents = [.medium(), .large()]
            sheetPresentationController.prefersGrabberVisible = true
        }
        
        // Present the sheet
        sheetController.modalPresentationStyle = .pageSheet
        present(sheetController, animated: true, completion: nil)
    }
}
