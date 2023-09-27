/*
CIFilter is a class in iOS development used for applying image and video effects to Core Image objects, such as CIImages and CIRenderedOutputs. It's a fundamental component of the Core Image framework, allowing you to process and manipulate images and videos. Here's what it represents:

1. Image and Video Processing: CIFilter is used to apply a wide range of image and video effects, including blurs, color adjustments, distortions, and more. It provides a set of built-in filters and the ability to create custom filters.

2. Core Image Integration: CIFilter is tightly integrated with the Core Image framework, making it easy to incorporate image and video processing into your iOS apps. You can use CIFilter to transform and enhance images and videos.

3. Filter Parameters: CIFilters are parameterized, meaning you can configure their properties to control the intensity and behavior of the applied effect. You can adjust parameters such as input image, filter settings, and output image.

Here's an example of how to create and use a CIFilter to apply a Gaussian blur effect to a UIImage:
*/

import UIKit
import CoreImage

// Load an image to apply the Gaussian blur effect
if let image = UIImage(named: "inputImage") {
    if let ciImage = CIImage(image: image) {
        // Create a CIFilter for the Gaussian blur effect
        let filter = CIFilter(name: "CIGaussianBlur")
        
        // Set input image for the filter
        filter?.setValue(ciImage, forKey: kCIInputImageKey)
        
        // Set blur radius (adjustable parameter)
        filter?.setValue(10.0, forKey: kCIInputRadiusKey)
        
        // Get the output image from the filter
        if let outputImage = filter?.outputImage {
            // Create a CIContext for rendering the output image
            let context = CIContext()
            
            // Render the output image to a CGImage
            if let cgImage = context.createCGImage(outputImage, from: outputImage.extent) {
                // Convert the CGImage to a UIImage for display
                let blurredImage = UIImage(cgImage: cgImage)
                
                // Display the blurred image
                let imageView = UIImageView(image: blurredImage)
                imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
                
                // Add the image view to your view hierarchy
                let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
                containerView.addSubview(imageView)
                
                // Now, you have applied a Gaussian blur effect to the input image using CIFilter.
            }
        }
    }
}
