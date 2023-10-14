import UIKit

let shadow = NSShadow()
 shadow.shadowColor = UIColor.red
 shadow.shadowBlurRadius = 5
 
 let attrs: [NSAttributedString.Key: Any] = [
     .font: UIFont.systemFont(ofSize: 36),
     .foregroundColor: UIColor.white,
     .shadow: shadow
 ]
