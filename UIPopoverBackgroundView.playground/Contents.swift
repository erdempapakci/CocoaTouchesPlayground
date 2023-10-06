/*
 UIPopoverBackgroundView is a class in UIKit for iOS that provides a way to customize the appearance and behavior of the background view for a popover. Popovers are typically used to present additional information or options when the user interacts with a specific UI element, such as a button.

 Key aspects of UIPopoverBackgroundView include:

 Customization: You can subclass UIPopoverBackgroundView to create a custom background view for popovers. This allows you to define the popover's appearance, including its borders, arrow, and other visual elements.
 Placement and Arrow: Popovers typically include an arrow that points to the source view or button from which they were presented. You can customize the position and appearance of this arrow.
 Content Insets: You can specify content insets for the popover's content area to control how the content is positioned within the popover's frame.
 Shadow: You can customize the shadow appearance of the popover to give it depth and make it visually distinct.
 */

import UIKit
final class PopoverBackgroundView: UIPopoverBackgroundView {
    
    private var offset = CGFloat(0)
    private var arrow = UIPopoverArrowDirection.any
    private var backgroundImageView: UIImageView!
    
    override var arrowDirection: UIPopoverArrowDirection {
        get { return arrow }
        set { arrow = newValue }
    }
    
    override var arrowOffset: CGFloat {
        get { return offset }
        set { offset = newValue }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpView()
    }
    
    override static func contentViewInsets() -> UIEdgeInsets {
        return .zero
    }
    
    override static func arrowHeight() -> CGFloat {
        return 6
    }
    
    override class var wantsDefaultContentAppearance: Bool {
        return false
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        var backgroundImageViewFrame = bounds
        
        switch arrowDirection {
        case .down:
            backgroundImageViewFrame.size.height -= PopoverBackgroundView.arrowHeight()
        default:
            backgroundImageViewFrame.size.width -= PopoverBackgroundView.arrowHeight()
            backgroundImageViewFrame.origin.x += PopoverBackgroundView.arrowHeight()
        }
        
        backgroundImageView.frame = backgroundImageViewFrame
    }
    
    // MARK: - Private
    
    private func setUpView() {
        backgroundImageView = UIImageView(image: UIImage(systemName: "heart.fill"))
        addSubview(backgroundImageView)
        
        // Disable default shadow
        layer.shadowColor = UIColor.clear.cgColor
    }
}
