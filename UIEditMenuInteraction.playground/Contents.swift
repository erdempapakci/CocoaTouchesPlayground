/*
 To trigger the edit menu, you should perform a long-press gesture or a force touch (on devices that support it) on the UILabel or the selectable element. The exact behavior may depend on the device capabilities and iOS version.

 Here's how you can trigger the edit menu:

 On a physical device with 3D Touch support (e.g., iPhone 6s and later), press firmly on the UILabel (force touch) to trigger the edit menu.
 On devices without 3D Touch support or on the iOS simulator, you can simulate a long-press gesture by clicking and holding the mouse button over the UILabel.
 */

import UIKit

@available(iOS 16.0, *)
class EditMenuViewController: UIViewController {
    private lazy var textView: UITextView = {
       let temp = UITextView()
        temp.text = "Lorem ipsum"
        temp.textColor = .red
        temp.frame = .init(x: 100, y: 100, width: 100, height: 100)
        return temp
    }()
    var editMenuInteraction: UIEditMenuInteraction?
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(textView)
        setupEditMenuInteraction()
      
    }
    private func setupEditMenuInteraction() {
        
            // Addding Menu Interaction to TextView
            editMenuInteraction = UIEditMenuInteraction(delegate: self)
        textView.addInteraction(editMenuInteraction!)
            
            // Addding Long Press Gesture
            let longPressGestureRecognizer =
            UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress(_:)))
        textView.addGestureRecognizer(longPressGestureRecognizer)
        }
    @objc
       func handleLongPress(_ gestureRecognizer: UILongPressGestureRecognizer) {
           guard gestureRecognizer.state == .began else { return }
           
           let configuration = UIEditMenuConfiguration(
               identifier: "textViewEdit",
               sourcePoint: gestureRecognizer.location(in: textView)
           )
           
           editMenuInteraction?.presentEditMenu(with: configuration)
       }
}
@available(iOS 16.0, *)

extension EditMenuViewController: UIEditMenuInteractionDelegate {
    func editMenuInteraction(_ interaction: UIEditMenuInteraction,
                             menuFor configuration: UIEditMenuConfiguration,
                             suggestedActions: [UIMenuElement]) -> UIMenu? {
        
        var actions = suggestedActions
        
        let customMenu = UIMenu(title: "", options: .displayInline, children: [
            UIAction(title: "menuItem1") { _ in
                print("menuItem1")
            },
            UIAction(title: "menuItem2") { _ in
                print("menuItem2")
            },
            UIAction(title: "menuItem3") { _ in
                print("menuItem3")
            }
        ])
        
        actions.append(customMenu)
        
       
        return UIMenu(children: customMenu.children)
    
    }
}
