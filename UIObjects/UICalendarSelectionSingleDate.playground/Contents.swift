import UIKit

@available(iOS 16.0, *)
final class ViewController: UIViewController {
  
   
    private lazy var calendarView: UICalendarView = {
        let temp = UICalendarView(frame: view.bounds)
        let gregorianCalendar = Calendar(identifier: .gregorian)
        temp.calendar = gregorianCalendar
        temp.fontDesign = .rounded
        temp.delegate = self
        return temp
    }()
    private lazy var selection: UICalendarSelectionSingleDate = {
       let temp = UICalendarSelectionSingleDate(delegate: self)
        return temp
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        calendarView.selectionBehavior = selection
        view.addSubview(calendarView)
    
    }
  
}
@available(iOS 16.0, *)
extension ViewController: UICalendarViewDelegate {
    
}
@available(iOS 16.0, *)
extension ViewController: UICalendarSelectionSingleDateDelegate {
    func dateSelection(_ selection: UICalendarSelectionSingleDate, didSelectDate dateComponents: DateComponents?) {
        
    }
  
}
