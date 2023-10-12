import UIKit
// Create an NSExpression for a mathematical expression
let expression = NSExpression(format: "2 + 3")

// Evaluate the expression
if let result = expression.expressionValue(with: nil, context: nil) as? Int {
    print("Result: \(result)")
} else {
    print("Expression evaluation failed")
}
