import UIKit
//
//Dynamic Type Support: UIFontMetrics is designed to work seamlessly with Dynamic Type, which allows users to adjust the text size in your app according to their preferences. By using UIFontMetrics, you ensure that your app's text scales correctly when the user changes the text size setting in the Accessibility settings.

let fontMetrics = UIFontMetrics(forTextStyle: .headline)
let headlineFont = fontMetrics.scaledFont(for: .systemFont(ofSize: 24))
titleLabel.font = headlineFont
