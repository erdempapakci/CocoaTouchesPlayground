
import UIKit
@available(iOS 16.0, *)
class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
         let calendarView = UICalendarView()
        // Set the calendar view's format to monthly.
        calendarView.calendar = .current
        calendarView.locale = .current
        calendarView.fontDesign = .rounded
        calendarView.delegate = self
      

        // Set the calendar view's selection to a single date.
     
        // Add the calendar view to the view hierarchy.
        view.addSubview(calendarView)

        // Constrain the calendar view to the view hierarchy.
        calendarView.translatesAutoresizingMaskIntoConstraints = false
        calendarView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        calendarView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        calendarView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        calendarView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}
@available(iOS 16.0, *)
extension ViewController: UICalendarViewDelegate {
    
}
