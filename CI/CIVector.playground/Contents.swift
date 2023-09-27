/*
CIVector is a class in the Core Image framework that represents a vector or a set of values with a specific dimension. It is commonly used to provide input parameters for image processing operations performed with Core Image filters. Here's what CIVector represents:

1. Vector Data: CIVector represents a vector of values, typically of a specific dimension, such as 2D or 3D. The values can be of various types, including integers, floats, and doubles.

2. Flexible Input: CIVector provides a way to pass numeric input values to Core Image filters. These values can control various aspects of the image processing, such as coordinates, scales, sizes, and more.

3. Immutable: CIVector objects are immutable, meaning their values cannot be changed once they are created. To modify a vector, you need to create a new one.

4. Core Image Integration: It is tightly integrated with Core Image filters, and many filter parameters accept CIVector instances as input.

Here's a basic example of how to create and use a CIVector to specify a point in 2D space:
*/

import CoreImage

// Create a CIVector representing a 2D point at coordinates (100, 200)
let pointVector = CIVector(x: 100, y: 200)

// You can use the pointVector in a Core Image filter's input parameters
let filter = CIFilter(name: "CIAffineTransform")
filter?.setValue(pointVector, forKey: "inputTranslate")

// Apply the filter to an input image (not shown in this example)
