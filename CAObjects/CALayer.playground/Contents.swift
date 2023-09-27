/*
CALayer is a fundamental class in iOS development used for rendering and managing content within a layer-backed view or view hierarchy. Here's what it represents:

1. Layer Rendering: CALayer is responsible for rendering the visual content of a UIView or backing layer. It can display images, colors, shapes, and more.

2. Lightweight: CALayer is lightweight compared to UIView, making it suitable for high-performance scenarios. It's often used for custom drawing and animations.

3. Core Animation: CALayer is at the core of the Core Animation framework, which provides advanced animations and compositing capabilities for iOS applications.

4. Direct Manipulation: You can directly manipulate a CALayer's properties to create custom animations, transitions, and visual effects.

Here's an example of how to create and use a CALayer to draw a custom shape within a UIView:
*/

import UIKit
import QuartzCore

// Create a UIView
let customView = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))

// Create a CALayer
let customLayer = CALayer()

// Set the layer's background color
customLayer.backgroundColor = UIColor.blue.cgColor

// Define the layer's frame (position and size)
customLayer.frame = customView.bounds

// Create a custom path for the layer (e.g., a circle)
let circlePath = UIBezierPath(ovalIn: customLayer.bounds).cgPath
customLayer.path = circlePath

// Add the layer to the view's layer hierarchy
customView.layer.addSublayer(customLayer)

// You can now use customView as a UIView with a custom layer-backed shape.
