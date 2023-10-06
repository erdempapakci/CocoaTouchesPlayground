/*
 UIPickerView is a UI component in UIKit for iOS that allows you to present a list of options from which a user can make a selection. It is often used for selecting values or options in a dropdown-style interface. A UIPickerView consists of one or more columns, each containing a set of rows with selectable content.

 Key features and concepts related to UIPickerView include:

 Components: A UIPickerView can have multiple components, each representing a separate column of data. For example, a date picker might have three components for selecting the day, month, and year.
 Rows: Each component contains a series of rows with content that the user can choose from. Rows can display text, images, or custom views.
 Delegate and Data Source: To configure and populate a UIPickerView, you typically set a delegate and data source. The delegate handles events such as row selection, while the data source provides the content for each component and row.
 Selection: Users can select rows in each component by tapping on them. The selected row(s) are highlighted, and you can programmatically retrieve the selected values.
 Customization: You can customize the appearance of a UIPickerView, including the font, text color, and background color. Additionally, you can add custom views as row content.
 */

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let pickerView = UIPickerView()
    let data = ["Option 1", "Option 2", "Option 3", "Option 4", "Option 5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // Set the delegate and data source
        pickerView.delegate = self
        pickerView.dataSource = self
        
        // Add the pickerView to the view
        pickerView.center = view.center
        view.addSubview(pickerView)
    }
    
    // MARK: - UIPickerViewDelegate methods
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedValue = data[row]
        print("Selected value: \(selectedValue)")
    }
    
    // MARK: - UIPickerViewDataSource methods
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 // Number of components (columns)
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count // Number of rows in the component
    }
}
