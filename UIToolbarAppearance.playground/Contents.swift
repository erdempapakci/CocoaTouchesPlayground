/*
 Customization: UIToolbarAppearance allows you to customize the visual appearance of toolbars, including their background, button styles, and other visual elements.
 Hierarchical Customization: You can define appearance settings for a specific toolbar instance, for all toolbars of a specific type throughout your app, or for all toolbars globally. This hierarchical customization allows you to create consistent styling across your app.
 Toolbar Styles: You can customize different aspects of toolbars, such as their background color, background image, button text color, button tint color, and more.
 Custom Button Styles: You can define custom button styles for toolbar items, including both system-provided and custom buttons.
 Appearance Responders: UIToolbarAppearance works in conjunction with appearance responders, such as view controllers and navigation bars, allowing you to apply appearance settings at different levels of the view hierarchy.
 Dynamic Type Support: It supports Dynamic Type, which means that your toolbar appearance can adapt to the user's preferred text size settings.
 */
import UIKit

class ViewController: UIViewController {

    private let toolBarHeight: CGFloat = 54
    
    lazy var toolBar: UIToolbar = {
        // Decide the size of the toolbar.
        let tb = UIToolbar(frame: CGRect(x: 0, y: self.view.bounds.size.height - toolBarHeight, width: self.view.bounds.size.width, height: 50.0))
        if #available(iOS 15.0, *) {
                   var toolbarAppearance = UIToolbarAppearance()

                   // Customize the background color
                   toolbarAppearance.backgroundColor = .systemBlue

                   // Customize button text color
                   toolbarAppearance.buttonAppearance.normal.titleTextAttributes[.foregroundColor] = UIColor.white

                   // Apply the customized appearance to the toolbar
                   tb.standardAppearance = toolbarAppearance
               }
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



