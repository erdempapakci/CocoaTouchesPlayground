/*
 A UIResolvedShape is a shape that has been completely resolved based on a context. This means that it has been converted into a format that can be used to render the shape on the screen.

 UIResolvedShapes are created by the UIKit framework when it renders a view hierarchy. The UIKit framework takes the shape of each view in the view hierarchy and resolves it based on the context of the view. This context includes the view's frame, its transform, and the current drawing context.

 Once a UIResolvedShape has been created, it can be used to render the shape on the screen. This can be done using the UIResolvedShape.draw(with:) method.
 */

import UIKit

var greeting = "Hello, playground"
