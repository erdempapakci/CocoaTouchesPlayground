/*
CIRectangleFeature is a class in the Core Image framework that represents a rectangle-shaped feature detected within an image. This class is typically used in conjunction with CIDetector to identify and describe rectangular shapes within images, such as documents, book covers, or any other rectangular objects. Here's what CIRectangleFeature represents:

1. Rectangle Detection: CIRectangleFeature is used for detecting rectangular shapes in images. It provides information about the position and characteristics of the detected rectangle.

2. Features and Attributes: It offers properties to access various attributes of the detected rectangle, such as its corners, angle, and dimensions. These attributes can be useful for tasks like perspective correction or further analysis of rectangular objects.

3. Integration with CIDetector: You typically obtain instances of CIRectangleFeature by using CIDetector with the CIFeatureTypeRectangle option. The CIDetector scans the image for rectangular features and returns an array of CIRectangleFeature instances representing each detected rectangle.

Here's a basic example of how to use CIRectangleFeature to detect and extract information about rectangles in an image:
*/

import UIKit
import CoreImage

// Load an input image as a CIImage
if let inputImage = CIImage(image: UIImage(named: "inputImage")!) {
    // Create a CIDetector for rectangle detection
    let detector = CIDetector(ofType: CIDetectorTypeRectangle, context: nil, options: [CIDetectorAccuracy: CIDetectorAccuracyHigh])
    
    // Detect rectangles in the input image
    if let features = detector?.features(in: inputImage) as? [CIRectangleFeature] {
        // Iterate through detected rectangles
        for rectangleFeature in features {
            // Access attributes of the rectangle
            let topLeft = rectangleFeature.topLeft
            let topRight = rectangleFeature.topRight
            let bottomLeft = rectangleFeature.bottomLeft
            let bottomRight = rectangleFeature.bottomRight
            let angle = rectangleFeature.angle
            
            // You can use the attributes for further processing or perspective correction
        }
    }
}
