/**
 
 UINotificationFeedbackGenerator: This subclass is used to provide feedback for notifications or alerts. It has three different types of feedback, each associated with a specific use case:
 .success: Use this when indicating a successful operation.
 .warning: Use this when indicating a warning or caution.
 .error: Use this when indicating an error or failure.
 UIImpactFeedbackGenerator: This subclass is used to generate feedback that simulates the physical impact or collision of an object. It has three different styles:
 .light: A light impact, suitable for minor interactions.
 .medium: A medium impact, suitable for standard interactions.
 .heavy: A heavy impact, suitable for significant interactions.
 UISelectionFeedbackGenerator: This subclass is used for providing feedback when the user makes a selection or picks an option. It's less intense than impact feedback and is typically used for less critical interactions.
 */

import UIKit
final class FeedBackVC: UIViewController {
    let feedbackGenerator = UINotificationFeedbackGenerator()
    lazy var button: UIButton = {
        let temp = UIButton(configuration: .bordered())
        temp.titleLabel?.text = "Click"
        temp.tintColor = .red
        temp.addTarget(self, action: #selector(didSelect), for: .touchUpInside)
        temp.frame = .init(x: 100, y: 100, width: 100, height: 100)
        return temp
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(button)
        feedbackGenerator.prepare()
    }
    @objc private func didSelect() {
        feedbackGenerator.notificationOccurred(.warning)
        feedbackGenerator.notificationOccurred(.success)
    }
   
}
