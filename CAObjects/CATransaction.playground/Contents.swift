/*
CATransaction is a class in iOS development used for grouping multiple layer animations into a single, atomic transaction. It allows you to control the timing, animation options, and completion of a group of animations affecting one or more layers. Here's what it represents:

1. Atomic Animations: CATransaction is used to group multiple layer animations, ensuring that they are executed atomically. This means that all animations within a transaction occur simultaneously, and the transaction is committed as a single animation block.

2. Control Over Animations: CATransaction provides control over animation properties such as animation duration, timing curve, and animation options. You can customize these properties for the entire transaction.

3. Completion Handlers: You can set a completion handler for a transaction to perform actions after all animations within the transaction have completed.

Here's an example of how to create and use a CATransaction to group animations:
*/

import UIKit
import QuartzCore

// Create a view to be animated
let animatedView = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
animatedView.backgroundColor = UIColor.blue

// Add the view to your view hierarchy
let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
containerView.addSubview(animatedView)

// Create a CATransaction for grouping animations
CATransaction.begin()

// Customize animation properties for the entire transaction
CATransaction.setAnimationDuration(2.0) // Animation duration
CATransaction.setAnimationTimingFunction(CAMediaTimingFunction(name: .easeInEaseOut)) // Timing curve

// Create and configure animations
let positionAnimation = CABasicAnimation(keyPath: "position")
positionAnimation.fromValue = animatedView.layer.position
positionAnimation.toValue = CGPoint(x: 200, y: 200)

let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
rotationAnimation.fromValue = 0.0
rotationAnimation.toValue = CGFloat.pi * 2.0

// Add animations to the view's layer
animatedView.layer.add(positionAnimation, forKey: "positionAnimation")
animatedView.layer.add(rotationAnimation, forKey: "rotationAnimation")

// Set a completion handler for the transaction
CATransaction.setCompletionBlock {
    print("Animations completed!")
}

// Commit the transaction (execute the animations)
CATransaction.commit()

// The view will now animate its position and rotation as part of a single transaction.
