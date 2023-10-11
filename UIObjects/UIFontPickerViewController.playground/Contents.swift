/*
 UIFontPickerViewController is a view controller introduced in iOS 13.0 that allows users to select fonts for use in text-based elements within your app. It provides a standard system interface for choosing fonts, which can help maintain a consistent and visually appealing design.

 Key features and usage of UIFontPickerViewController include:

 Font Selection: Users can browse and select fonts from the list presented by the font picker. They can see font previews, adjust the font size, and choose the fonts they want to use.
 Customization: You can customize the font picker by specifying the available font descriptors and font collections. This allows you to limit font choices to specific fonts or categories, ensuring that users select fonts suitable for your app's design.
 Completion Handler: You can provide a completion handler to receive the selected font when the user makes a selection in the font picker. This allows you to update the appearance of text elements in your app with the chosen font
 */

import UIKit

import UIKit

class FontPickerViewController: UIViewController, UIFontPickerViewControllerDelegate {
   
    private lazy var button: UIButton = {
        let temp = UIButton(type: .system)
        temp.titleLabel?.text = "Pick"
        temp.backgroundColor = .yellow
        temp.addTarget(self, action: #selector(showFontPicker), for: .touchUpInside)
        temp.frame = .init(x: 100, y: 100, width: 100, height: 100)
        return temp
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        
    }

    @objc func showFontPicker() {
        let fontPickerViewController = UIFontPickerViewController()
        fontPickerViewController.delegate = self
        present(fontPickerViewController, animated: true, completion: nil)
    }

    // MARK: - UIFontPickerViewControllerDelegate

    func fontPickerViewControllerDidPickFont(_ viewController: UIFontPickerViewController) {
        let selectedFontDescriptor = viewController.selectedFontDescriptor
        // Handle the selected font descriptor, e.g., update text elements in your app
        print("Selected Font: \(selectedFontDescriptor)")
    }
}


