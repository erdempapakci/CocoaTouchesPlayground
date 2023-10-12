/*
 NSAttributedString is a class in Apple's Foundation framework that allows you to apply various attributes to the text within an NSString. It is commonly used in iOS, macOS, and other Apple platforms to style and format text in user interfaces. With NSAttributedString, you can apply different formatting attributes to portions of a string, such as fonts, colors, styles, and more.

 Key features and concepts related to NSAttributedString include:

 Attributes: You can apply attributes to specific ranges of text within a string. Attributes include fonts, colors, paragraph styles, character spacing, and more.
 Text Styles: NSAttributedString supports the application of different text styles, such as bold, italic, underline, and strikethrough.
 Rich Text: You can create rich text documents by applying multiple attributes to text within a single string.
 Paragraph Styles: NSAttributedString allows you to control the formatting of paragraphs, including alignment, line spacing, and line breaks.
 Attachments: You can attach images or other media to text within an attributed string.
 Dynamic Text: NSAttributedString can adapt to dynamic type settings for accessibility, ensuring that the text remains readable at various font sizes.
 */

import UIKit
class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
      let label = UILabel()
        let attributeString = NSAttributedString(string: "Hello World", attributes: CustomAttributes.labelAtt)
        label.attributedText = attributeString
        view.addSubview(label)
        label.frame = view.bounds
    }
}
struct CustomAttributes {
    static let labelAtt: [NSAttributedString.Key: Any] = [
        .font:  UIFont.boldSystemFont(ofSize: 40),
        .foregroundColor: UIColor.white,
        .underlineStyle: NSUnderlineStyle.single
    ]
}
