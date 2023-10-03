import UIKit
//System Fonts: iOS provides a set of system fonts that you can use without needing to include custom font files. You can access these system fonts using predefined class methods like systemFont(ofSize:), boldSystemFont(ofSize:), italicSystemFont(ofSize:), and preferredFont(forTextStyle:). For example:
let defaultFont = UIFont.systemFont(ofSize: 16.0)
let boldFont = UIFont.boldSystemFont(ofSize: 18.0)
let italicFont = UIFont.italicSystemFont(ofSize: 14.0)

//Custom Fonts: In addition to system fonts, you can also include custom font files in your app's bundle and load them using UIFont. To load a custom font, you typically use the UIFont(name:size:) constructor, specifying the font's name and size.
if let customFont = UIFont(name: "CustomFontName", size: 20.0) {
    // Use the custom font
}
//Dynamic Type: iOS supports Dynamic Type, which allows users to adjust the text size based on their preferences. You can create responsive user interfaces by using dynamic fonts, and you can access dynamic fonts using the preferredFont(forTextStyle:) method with a specific text style. This helps ensure that your app's text is legible and accessible for all users.

let bodyFont = UIFont.preferredFont(forTextStyle: .body)
let headlineFont = UIFont.preferredFont(forTextStyle: .headline)

//Attributes for NSAttributedString: UIFont is commonly used when creating NSAttributedString objects with specific font attributes. You can set the font for a range of text in an attributed string using the UIFont property.
let attributes: [NSAttributedString.Key: Any] = [
    .font: UIFont.systemFont(ofSize: 16.0),
    .foregroundColor: UIColor.black
]
let attributedString = NSAttributedString(string: "Hello, World!", attributes: attributes)
