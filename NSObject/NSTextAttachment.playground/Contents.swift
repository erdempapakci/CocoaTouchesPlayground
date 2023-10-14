import UIKit

let imageAttachment = NSTextAttachment()
imageAttachment.image = UIImage(systemName: "heart") // Set your image here
imageAttachment.bounds = CGRect(x: 0, y: -4, width: 20, height: 20) // Customize the size and vertical alignment

// Create an attributed string with the image attachment
let attributedString = NSMutableAttributedString(string: "Text with Image: ")
attributedString.append(NSAttributedString(attachment: imageAttachment))

// Display the attributed string in a label or text view
let label = UILabel()
label.attributedText = attributedString
