/*
 UISegmentedControl is a UIKit control in iOS that allows you to display a set of segments, where each segment represents a different option or choice. Users can select one segment at a time, and it's commonly used for scenarios where there are multiple mutually exclusive options or views to choose from.
 */

import UIKit
final class CustomSegmentedControl: UISegmentedControl {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    private func commonInit() {
    
        self.insertSegment(with: .init(systemName: "heart"), at: 0, animated: true)
        self.insertSegment(with: .init(systemName: "heart.fill"), at: 1, animated: true)
        self.insertSegment(with: .init(systemName: "circle"), at: 0, animated: true)
        selectedSegmentIndex = 0
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ViewController: UIViewController {

    private lazy var segmentedControl: CustomSegmentedControl = {
        let temp = CustomSegmentedControl(frame: .init(x: 100, y: 100, width: 100, height: 50))
        
        return temp
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(segmentedControl)
   
    }

}


