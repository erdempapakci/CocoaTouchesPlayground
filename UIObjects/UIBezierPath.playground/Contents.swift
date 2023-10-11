/*
UIBezierPath is a fundamental class in UIKit for defining and drawing vector-based paths and shapes in your iOS applications. It provides a versatile and efficient way to create complex shapes, lines, and curves, which can be used for various purposes such as custom views, animations, and rendering.

Here's what you need to know about UIBezierPath:

1. Vector-Based Graphics: UIBezierPath is primarily used for defining vector graphics. Vector graphics are resolution-independent and can be scaled without loss of quality, making them ideal for creating scalable and high-quality graphics.

2. Basic Shapes: You can use UIBezierPath to create basic shapes like rectangles, ellipses, and rounded rectangles, as well as more complex shapes with custom paths, curves, and lines.

3. Stroke and Fill: You can define the appearance of the path by specifying stroke (outline) and fill (interior) properties. This allows you to control the color, line width, and line style of the path.

4. Complex Paths: UIBezierPath supports creating complex paths with multiple subpaths, closed and open paths, and combining paths using union, intersection, and other operations.

5. Bezier Curves: Bezier curves are a fundamental concept in vector graphics, and UIBezierPath provides methods for creating quadratic and cubic Bezier curves, which are essential for creating smooth and curved shapes.

6. Path Drawing: Once you've defined a path, you can use it for drawing by either stroking or filling it. You can also apply various drawing and rendering options, such as line dash patterns, gradients, and shadows.

Here's a simple example of creating and drawing a rectangular path with UIBezierPath:

*/

import UIKit

class MyView: UIView {
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        // Create a UIBezierPath for a rectangle.
        let rectanglePath = UIBezierPath(rect: CGRect(x: 20, y: 20, width: 100, height: 60))
        
        // Set the stroke color and line width.
        UIColor.blue.setStroke()
        rectanglePath.lineWidth = 2.0
        
        // Stroke (draw) the path.
        rectanglePath.stroke()
    }
}
