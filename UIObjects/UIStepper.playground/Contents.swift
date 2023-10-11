/*
 UIStepper is a user interface (UI) control in Apple's UIKit framework, primarily used in iOS app development. It provides a simple way to let users increment or decrement a numeric value by tapping on plus and minus buttons. UIStepper is often used in situations where you want users to make incremental adjustments to a value, such as changing the quantity of items in a shopping cart or setting a numeric value like font size or opacity.

 Key properties and attributes of UIStepper include:

 value: This property represents the current value of the stepper. You can set its initial value and read its value as the user interacts with the stepper.
 minimumValue and maximumValue: These properties determine the range of values that the stepper can represent. Users cannot set a value lower than minimumValue or higher than maximumValue.
 stepValue: This property determines the amount by which the value changes with each increment or decrement. For example, if stepValue is set to 1, the value will change by 1 with each tap.
 autorepeat: When set to true, the stepper will continuously increment or decrement the value while the user presses and holds the buttons. When set to false, the user must tap repeatedly to change the value.
 */

import UIKit

final class CustomStepper: UIStepper {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    private func commonInit() {
        isContinuous = true
        minimumValue = 0
        maximumValue = 5
       // setBackgroundImage(.init(systemName: ""), for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
class ViewController: UIViewController {
    
    private lazy var stepper: UIStepper = {
       let temp = CustomStepper()
        temp.frame = .init(x: 50, y: 100, width: 50, height: 100)
    
        return temp
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(stepper)
        stepper.addTarget(self, action: #selector(stepperCount(_:)), for: .valueChanged)
    }
    @objc private func stepperCount(_ sender: CustomStepper) {
        
        print(sender.value)
    }
}

