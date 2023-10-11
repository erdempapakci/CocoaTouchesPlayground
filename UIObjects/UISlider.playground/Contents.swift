/*
 UISlider is a UIKit control in iOS that allows users to select a value from a continuous range by sliding a thumb along a track. It's commonly used in user interfaces to adjust settings, such as volume control or brightness, where there's a need to represent a range of values.

 Here are some key features and properties of UISlider:

 Value Range: You can specify a minimum and maximum value for the slider, defining the range within which the user can select a value.
 Current Value: The value property represents the current selected value within the specified range.
 Thumb Control: Users interact with the slider by dragging a thumb control along the track. The position of the thumb corresponds to the selected value.
 Track: The slider has a track, which is the horizontal bar along which the thumb moves.
 Minimum and Maximum Track Tint: You can set colors for the minimum and maximum portions of the track on either side of the thumb.
 Continuous vs. Discrete: Sliders can be configured to provide continuous values or discrete values (e.g., whole numbers). The isContinuous property controls this behavior.
 Events: You can register for value change events to be notified when the slider's value changes.
 */



import UIKit
final class CustomSlider: UISlider {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    private func commonInit() {
        self.minimumValue = 0.0
        self.maximumValue = 100.0
        self.minimumTrackTintColor = .red
        self.maximumTrackTintColor = .green
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ViewController: UIViewController {

    private lazy var slider: CustomSlider = {
        let temp = CustomSlider(frame: view.frame)
        return temp
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(slider)
    }
    
}
