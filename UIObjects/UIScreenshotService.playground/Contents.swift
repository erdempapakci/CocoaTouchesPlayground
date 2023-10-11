/*
 UIScreenshotService is a class in UIKit introduced in iOS 15 and later. It provides a mechanism for apps to capture screenshots of their user interface programmatically. This class allows you to capture a screenshot of a specific view or a portion of your app's user interface and perform additional actions on the captured screenshot.

 Key components and methods of UIScreenshotService include:

 Requesting Screenshot Capture:
 You can create an instance of UIScreenshotService and use it to request a screenshot capture for a specific view or region of your app's user interface.
 Delegate Protocol:
 UIScreenshotServiceDelegate: To receive callbacks and handle the captured screenshot.
 Screenshot Editing:
 You can provide a delegate that conforms to the UIScreenshotServiceDelegate protocol to receive the captured screenshot and perform editing or processing actions on it before it's saved.
 Saving Screenshot:
 After editing (if needed), you can save the screenshot to the user's photo library or perform other actions with it.
 */


import UIKit


class ViewController: UIViewController {
    
    private var service: UIScreenshotService!
    private let customView: UIView = {
       let temp = UIView()
        temp.backgroundColor = .blue
        temp.frame = .init(x: 50, y: 50, width: 150, height: 150)
        return temp
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(customView)
        // Get the screenshot service for the current window scene
        if let windowScene = view.window?.windowScene {
            service = windowScene.screenshotService
            service.delegate = self
        }
    }
}

extension ViewController: UIScreenshotServiceDelegate {
    func screenshotService(_ screenshotService: UIScreenshotService, generatePDFRepresentationWithCompletion completionHandler: @escaping (Data?, Int, CGRect) -> Void) {
        let pdfData = NSMutableData()
        
        // Begin PDF context
        UIGraphicsBeginPDFContextToData(pdfData, .zero, nil)
        UIGraphicsBeginPDFPageWithInfo(CGRect(origin: .zero, size: view.frame.size), nil)
        
        // Draw your content to the PDF context
        if let pdfContext = UIGraphicsGetCurrentContext() {
            view.layer.render(in: pdfContext)
        }
        
      
      
        
        // End PDF context
        UIGraphicsEndPDFContext()
        
        print(pdfData)
        // Call the completion handler with PDF data and other parameters
        completionHandler(pdfData as Data, 0, CGRect(origin: .zero, size: view.frame.size))
    }
}
