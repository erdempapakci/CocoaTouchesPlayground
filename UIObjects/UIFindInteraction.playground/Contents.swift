import UIKit
@available(iOS 17, *)
class FindVC: UIViewController {

    private lazy var textView: UITextView = {
           let temp = UITextView()
            temp.text = "Lorem ipsum"
            temp.textColor = .red
            temp.frame = .init(x: 100, y: 100, width: 100, height: 100)
            return temp
        }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // UIFindInteraction nesnesi oluştur.
        let findInteraction = UIFindInteraction(sessionDelegate: self)

        // UIFindInteraction nesnesini textView nesnesine ekle.
        textView.addInteraction(findInteraction)
    }
}

@available(iOS 17, *)
extension FindVC: UIFindInteractionDelegate {
    func findInteraction(_ interaction: UIFindInteraction, sessionFor view: UIView) -> UIFindSession? {
      return UIFindSession()
    }
    

}

