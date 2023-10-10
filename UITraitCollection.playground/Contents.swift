/*
 UITraitCollection is a class in Apple's UIKit framework for iOS that encapsulates a collection of traits that describe the environment and characteristics of a user interface. It was introduced in iOS 8 to help developers design adaptive user interfaces that can respond to changes in device characteristics, user interactions, and the user interface style.

 Here are some key points about UITraitCollection:

 Traits: Traits are characteristics of the user interface environment. UITraitCollection encapsulates various traits, including:
 User Interface Idiom: Describes the device type (e.g., iPhone, iPad).
 Display Scale: Indicates the screen's scale (e.g., 1x, 2x, 3x for Retina displays).
 Display Gamut: Describes the color space (e.g., P3, SRGB).
 Size Classes: Defines the horizontal and vertical size classes (e.g., compact, regular).
 Layout Direction: Specifies the layout direction (e.g., left-to-right or right-to-left for right-to-left languages).
 User Interface Style: Represents the light or dark appearance mode (introduced in iOS 12).
 Accessibility Text Legibility: Indicates the user's preference for text legibility (e.g., high contrast, standard contrast).
 Dynamic Changes: UITraitCollection can change dynamically at runtime in response to various factors, such as device orientation changes, interface style changes (light to dark or vice versa), or changes in accessibility settings.
 Trait Collections for Views: Views and view controllers use UITraitCollection to adapt their appearance and behavior based on the current environment. For example, you can use size classes to design layouts that work well on both iPhone and iPad.
 Trait Environment: Many UIKit classes conform to the UITraitEnvironment protocol, which allows them to access the current trait collection. For example, UIViewController, UIView, and UIPresentationController conform to this protocol.
 Override Trait Collections: You can override the trait collection for a view or view controller using the overrideTraitCollection property. This is useful for testing or temporarily modifying traits.
 Size Classes: Size classes, represented by the horizontalSizeClass and verticalSizeClass properties, are particularly important for creating adaptive layouts. They help you design interfaces that adjust to different screen sizes and orientations.
 User Interface Style: The userInterfaceStyle property allows you to adapt your UI for light and dark modes, introduced in iOS 12. You can specify different appearance attributes for each mode.
 */


import UIKit

class ViewController: UIViewController {
    private lazy var userTitle: UILabel = {
        let temp = UILabel()
        temp.text = "Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum"
        temp.font = .preferredFont(forTextStyle: .headline)
        temp.textAlignment = .center
        temp.numberOfLines = 0
        return temp
    }()
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
       setTraits()
    }
    private func setTraits() {
        if traitCollection.verticalSizeClass == .regular {
            userTitle.frame = .init(x: 0, y: 75, width: 150, height: 250)
        } else {
            userTitle.frame = .init(x: 0, y: 75, width: 700, height: 50)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(userTitle)
        view.backgroundColor = .white
       
    }
}
