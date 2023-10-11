/*
UICellConfigurationState is a class introduced in iOS 14 as part of the UIKit framework. It plays a significant role in configuring and customizing cells in table views and collection views. This class represents the state of a cell, including its selection, focus, and editing state, among others.

Here are some key points about UICellConfigurationState:

1. Cell State Management: UICellConfigurationState is used to manage and query the current state of a cell. This state includes various aspects such as whether the cell is selected, highlighted, focused, or being edited.

2. Dynamic Configuration: You can use UICellConfigurationState to dynamically configure the appearance and behavior of a cell based on its state. For example, you can change the cell's background color when it's selected or adjust its text color when it's highlighted.

3. Customization: By adopting this class in your custom cell implementations, you can create cells that adapt to different user interactions and visual requirements. It allows you to make your user interface more responsive and user-friendly.

4. Contextual Information: The state provides contextual information that can be used to customize various elements of a cell, such as the title, image, or background view.

5. Consistency: UICellConfigurationState helps ensure visual consistency in your app's user interface by allowing you to define how cells should appear in different states, making it easier to create a polished user experience.

Here's a simple example of how UICellConfigurationState can be used to customize the appearance of a cell in a table view:

*/
import UIKit
class CustomTableViewCell: UITableViewCell {

    static let identifier = "CustomTableViewCell"

    
    override func updateConfiguration(using state: UICellConfigurationState) {
        super.updateConfiguration(using: state)

        var contentConfig = defaultContentConfiguration().updated(for: state)
        contentConfig.text = "Hello World"
        contentConfig.image = UIImage(systemName: "bell")

        var backgroundConfig = backgroundConfiguration?.updated(for: state)
        backgroundConfig?.backgroundColor = .purple

        if state.isHighlighted || state.isSelected {
            backgroundConfig?.backgroundColor = .orange
            contentConfig.textProperties.color = .red
            contentConfig.imageProperties.tintColor = .yellow
        }
        contentConfiguration = contentConfig
        backgroundConfiguration = backgroundConfig
    }
}

