/*
 UISwitch is a user interface (UI) control in Apple's UIKit framework, primarily used in iOS app development. It is a graphical representation of a binary switch that allows users to toggle between two states: on and off. UISwitch is commonly used to enable or disable a feature, option, or setting within an app.

 Key properties and attributes of UISwitch include:

 isOn: This property represents the current state of the switch. When the switch is turned on, isOn is set to true, and when it's turned off, isOn is set to false. You can programmatically set or retrieve this property to determine the switch's state.
 onTintColor: This property allows you to set the color of the switch's "on" side. You can choose a color that matches your app's design or branding.
 tintColor: This property sets the color of the switch's "off" side. It's typically a lighter color compared to onTintColor.
 thumbTintColor: This property specifies the color of the switch's thumb or knob. The thumb is the circular part of the switch that moves when the switch is toggled.
 onImage and offImage: You can set custom images to be displayed when the switch is in the "on" or "off" state, respectively, instead of using the default colors.
 isEnabled: You can use this property to enable or disable the switch. When isEnabled is set to false, the switch becomes grayed out and non-interactive.
 */

import UIKit

final class CustomSwitch: UISwitch {
    override init(frame: CGRect) {
        super.init(frame: frame)
        isOn = false
        thumbTintColor = .label
        onTintColor = .green
        
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class ViewController: UIViewController {
    private lazy var customSwitch: CustomSwitch = {
        let temp = CustomSwitch(frame: .init(x: view.center.x, y: view.center.y, width: 100, height: 100))
        
        return temp
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(customSwitch)
        customSwitch.addTarget(self, action: #selector(switchChanged), for: .valueChanged)
    }
    @objc private func switchChanged(sender: UISwitch) {
        print(sender.isOn)
    }

}
