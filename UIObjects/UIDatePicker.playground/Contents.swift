/*
 UIDatePicker is a UIKit control in iOS that allows users to select a date and/or time using a graphical interface. It's commonly used in various iOS apps, including those that involve scheduling, calendars, alarms, and other date and time-related functionality.

 Here's a brief overview of UIDatePicker:

 Date and Time Selection: UIDatePicker can be configured to allow users to pick a date, a time, or both date and time, depending on your requirements. You can switch between these modes using its datePickerMode property.
 Style Customization: You can customize the appearance of the UIDatePicker, including its background color, text color, font, and more.
 Date Range: You can set minimum (minimumDate) and maximum (maximumDate) date limits to restrict the range of dates the user can select.
 Value Change: You can track changes in the selected date or time using the addTarget(_:action:for:) method to add a target-action pair that responds to value changes.
 Locale and Calendar: UIDatePicker respects the device's locale settings and can display dates and times based on the user's preferred calendar system and time zone.

 */



import UIKit

class ViewController4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a UIDatePicker
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .dateAndTime // You can change the mode as needed
        datePicker.locale = Locale.current // Use the device's current locale
        datePicker.addTarget(self, action: #selector(datePickerValueChanged(_:)), for: .valueChanged)

        // Add the date picker to the view
        view.addSubview(datePicker)

        // Position and size the date picker
        datePicker.translatesAutoresizingMaskIntoConstraints = false
        datePicker.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        datePicker.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }

    @objc func datePickerValueChanged(_ sender: UIDatePicker) {
        // Handle date or time changes here
        let selectedDate = sender.date
        print("Selected Date: \(selectedDate)")
    }
}
