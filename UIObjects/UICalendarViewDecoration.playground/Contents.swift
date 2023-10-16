/*
 UICalendarViewDecoration is a class in the UIKit framework that allows you to customize the appearance of a UICalendarView object. It was introduced in iOS 15.

 To use UICalendarViewDecoration, you first need to create an instance of the class and specify the decoration's properties. Once you have created the decoration, you can add it to a UICalendarView object.


 */
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
    func calendarView(_ calendarView: UICalendarView, decorationFor dateComponents: DateComponents) -> UICalendarView.Decoration? {
        var decoration = UICalendarView.Decoration()
        decoration = .default(color: .red, size: .large)
        return decoration
    }
}
@available(iOS 16.0, *)
extension ViewController: UICalendarSelectionSingleDateDelegate {
    func dateSelection(_ selection: UICalendarSelectionSingleDate, didSelectDate dateComponents: DateComponents?) {
        
    }
  
}
