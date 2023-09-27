/*
CITextFeature is a class in the Core Image framework that represents a detected text feature within an image. It is typically used in conjunction with CIDetector to identify and extract information about text regions within images. Here's what CITextFeature represents:

1. Text Detection: CITextFeature is used for detecting text within images. It provides information about the position and characteristics of the detected text regions.

2. Features and Attributes: It offers properties to access various attributes of the detected text, including its bounds, position, and the recognized string content. These attributes are useful for tasks like text recognition, localization, or further analysis of text regions.

3. Integration with CIDetector: You typically obtain instances of CITextFeature by using CIDetector with the CIDetectorTypeText option. The CIDetector scans the image for text features and returns an array of CITextFeature instances representing each detected text region.

Here's a basic example of how to use CITextFeature to detect and extract information about text regions in an image:
*/

import UIKit
import CoreImage

// Load an input image as a CIImage
if let inputImage = CIImage(image: UIImage(named: "inputImage") ?? UIImage()) {
    // Create a CIDetector for text detection
    let detector = CIDetector(ofType: CIDetectorTypeText, context: nil, options: [CIDetectorAccuracy: CIDetectorAccuracyHigh])
    
    // Detect text regions in the input image
    if let features = detector?.features(in: inputImage) as? [CITextFeature] {
        // Iterate through detected text features
        for textFeature in features {
            // Access attributes of the text feature
            let bounds = textFeature.bounds
            let topLeft = textFeature.topLeft
            let topRight = textFeature.topRight
            let bottomLeft = textFeature.bottomLeft
            let bottomRight = textFeature.bottomRight
            
            // You can use the attributes for text recognition or other tasks
        }
    }
}
