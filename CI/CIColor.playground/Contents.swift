/*
CIColor is a class in iOS development used for representing colors in Core Image. It allows you to create and manipulate colors that can be used in image processing and filtering operations. Here's what it represents:

1. Color Representation: CIColor represents a color using its red, green, blue, and alpha (opacity) components. You can specify color values as floating-point numbers between 0.0 and 1.0, where 0.0 represents no intensity, and 1.0 represents full intensity.

2. Core Image Integration: CIColor is integrated with Core Image, making it a fundamental part of image processing and filtering workflows.

Here's an example of how to create and use a CIColor to represent a red color:
*/

import UIKit
import CoreImage

// Create a CIColor representing red
let redColor = CIColor(red: 1.0, green: 0.0, blue: 0.0)

// Create a CIFilter for applying a color filter
let colorFilter = CIFilter(name: "CIColorControls")

// Set the input color to the red CIColor
colorFilter?.setValue(redColor, forKey: "inputColor")

// Load an image to apply the color filter
if let image = UIImage(named: "inputImage") {
    let ciImage = CIImage(image: image)
    
    // Set the input image for the filter
    colorFilter?.setValue(ciImage, forKey: kCIInputImageKey)
    
    // Apply the color filter
    if let outputImage = colorFilter?.outputImage {
        // Convert the CIImage to a UIImage for display
        let context = CIContext()
        if let cgImage = context.createCGImage(outputImage, from: outputImage.extent) {
            let filteredImage = UIImage(cgImage: cgImage)
            
            // Display the filtered UIImage
            let imageView = UIImageView(image: filteredImage)
            imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
            
            // Add the image view to your view hierarchy
            let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
            containerView.addSubview(imageView)
            
            // Now, you have created a red CIColor and applied it as a color filter to an image.
        }
    }
}
