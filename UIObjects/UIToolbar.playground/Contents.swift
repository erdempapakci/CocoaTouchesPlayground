/*
 UIToolbar is a user interface element in Apple's UIKit framework for iOS and macOS. It provides a horizontal bar at the top or bottom of the screen that typically contains a set of buttons or other interactive controls. Toolbars are commonly used to offer quick access to commonly used actions or navigation options within an app.

 Here are some key points about UIToolbar:

 Position: A UIToolbar can be positioned at the top or bottom of the screen or within a specific view, depending on the app's design and requirements.
 Items: It contains a collection of UIBarButtonItem instances, which can include buttons, icons, text, and other interactive controls. These items are arranged horizontally within the toolbar.
 Customization: You can customize the appearance of a UIToolbar, including its background color, bar style, and the appearance of the items it contains.
 Actions: Each item in a UIToolbar can be associated with an action or selector, allowing you to respond to user interactions, such as button taps.
 Flexible and Fixed Space: You can use flexible and fixed space bar button items to control the spacing and alignment of items within the toolbar.
 System Icons: UIBarButtonItem instances can include system-provided icons for common actions like adding, editing, sharing, and more.
 Custom Views: In addition to buttons and icons, you can also add custom views as items in a UIToolbar, allowing for highly customized toolbar designs.
 Overflow Handling: When there are more items than can fit within the available space, a More button can appear, which opens a popover menu containing the additional items.
 Accessibility: UIToolbar is designed to be accessible to users with disabilities, ensuring that the toolbar and its items can be navigated and interacted with using accessibility features.
 */

import UIKit


class ViewController: UIViewController {

    private let toolBarHeight: CGFloat = 54
    
    lazy var toolBar: UIToolbar = {
        // Decide the size of the toolbar.
        let tb = UIToolbar(frame: CGRect(x: 0, y: self.view.bounds.size.height - toolBarHeight, width: self.view.bounds.size.width, height: 50.0))
        
        // Determine the position of the toolbar.
        tb.layer.position = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height-20.0)
        
        // Decide the color of the toolbar.
        tb.barStyle = .black
        tb.tintColor = UIColor.white
        tb.backgroundColor = UIColor.black
        
        return tb
    }()
    
    lazy var barButtonGreen: UIBarButtonItem = {
        // Generate button 1.
        let b: UIBarButtonItem = UIBarButtonItem(title: "Green", style:.plain, target: self, action: #selector(onClickBarButton(sender:)))
        b.tag = 1
        
        return b
    }()
    
    lazy var barButtonBlue: UIBarButtonItem = {
        // Generate button 2.
        let b: UIBarButtonItem = UIBarButtonItem(title: "Blue", style:.plain, target: self, action: #selector(onClickBarButton(sender:)))
        b.tag = 2
        
        return b
    }()
    
    lazy var barButtonRed: UIBarButtonItem = {
        // Generate button 3.
        let b: UIBarButtonItem = UIBarButtonItem(title: "Red", style:.plain, target: self, action: #selector(onClickBarButton(sender:)))
        b.tag = 3
        
        return b
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Place the button in the tool bar.
        self.toolBar.items = [self.barButtonGreen, self.barButtonBlue, self.barButtonRed]
        
        // Add UIToolBar on view
        self.view.addSubview(self.toolBar)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Called when UIBarButtonItem is pressed.
    @objc func onClickBarButton(sender: UIBarButtonItem) {
        switch sender.tag {
        case 1:
            self.view.backgroundColor = UIColor.green
        case 2:
            self.view.backgroundColor = UIColor.blue
        case 3:
            self.view.backgroundColor = UIColor.red
        default: return
        }
    }

}


