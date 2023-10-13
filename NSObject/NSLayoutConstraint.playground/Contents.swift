/*
 NSLayoutConstraint is a class in Apple's Foundation framework that is used to define and manage the layout of user interface elements in iOS and macOS apps. It is a key component of Auto Layout, a system for designing adaptive and flexible user interfaces that can adapt to different device sizes and orientations.

 NSLayoutConstraint represents a constraint between two user interface elements, such as views. Constraints define the relationships between these elements, specifying how they should be positioned, sized, and aligned relative to each other or to the parent view.

 Here are some common use cases and features of NSLayoutConstraint:

 Positioning: You can create constraints to specify the position of a view, such as aligning its leading and trailing edges to other views or to the parent view.
 Sizing: Constraints can define the width and height of a view, ensuring that it has a specific size or maintains an aspect ratio.
 Alignment: You can create constraints to align the centers of views or ensure that their baselines match.
 Margins: Constraints can include layout margins, which allow you to specify the distance between a view and its superview's margins, instead of its edges.
 Priority: Constraints can have priority levels, allowing you to specify which constraints should be relaxed or broken when it's impossible to satisfy all constraints simultaneously.
 Activation and Deactivation: You can activate and deactivate constraints to dynamically change the layout of your interface at runtime.
 */

import UIKit

final class ViewController: UIViewController {
    
    private lazy var customLabel: UILabel = {
       let temp = UILabel()
        temp.text = "Hey there"
        temp.font = .preferredFont(forTextStyle: .largeTitle)
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(customLabel)
        NSLayoutConstraint.activate([
        
            customLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            customLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            customLabel.topAnchor.constraint(equalTo: view.topAnchor),
            customLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        
        ])
       
    }
}
