



/*
 UIContentUnavailableView is a view in UIKit that displays a placeholder interface when content is unavailable. It is available in iOS 17.0 and later, iPadOS 17.0 and later, Mac Catalyst 17.0 and later, tvOS 17.0 and later, and visionOS 1.0 and later.

 UIContentUnavailableView is useful for displaying placeholder interfaces when content is loading, when there is no content to display, or when content is not accessible. For example, you could use a UIContentUnavailableView to display a placeholder interface while a table view is loading data, or to display a placeholder interface when a user does not have permission to view certain content.

 UIContentUnavailableView can be configured to display a variety of different placeholder interfaces. For example, you can display a placeholder image, a loading indicator, or a message to the user. You can also customize the appearance and behavior of the placeholder interface using the UIContentUnavailableView's configuration properties.
 
 */
import UIKit

@available(iOS 17, *)

final class ContentUnavaliable: UIView {
    
    private var unView: UIContentUnavailableView = {
        let temp = UIContentUnavailableView(configuration: .search())
        return temp
    }()
    
    override func setNeedsLayout() {
        super.setNeedsLayout()
        unView.frame = bounds
        addSubview(unView)
    }
    
}
