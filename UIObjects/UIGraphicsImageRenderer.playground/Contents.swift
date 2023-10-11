/*
 
 Drawing and Rendering: UIGraphicsImageRenderer provides a straightforward way to draw graphics and render them into images. You can use it to generate images for custom UI elements, icons, charts, or any other visual content.
 Context Configuration: You can configure the graphics context with various properties, such as the image size, scale, and format. This enables you to control the quality and characteristics of the generated image.
 Drawing Blocks: You provide a drawing block that contains the code to draw and render the image. This block receives a UIGraphicsImageRendererContext object, which represents the graphics context where you perform the drawing.
 Error Handling: The drawing block can throw errors, allowing you to handle any issues that may occur during the image rendering process.
 */


import UIKit


class UIGraphicsImageRendererController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Define the image size and scale
        let imageSize = CGSize(width: 200, height: 100)
        
        
        // Create a UIGraphicsImageRenderer
        let renderer = UIGraphicsImageRenderer(size: imageSize)
        
        // Generate the image using a drawing block
        let image = renderer.image { context in
            // Drawing code goes here
            let rectangle = CGRect(x: 0, y: 0, width: imageSize.width, height: imageSize.height)
            let fillColor = UIColor.blue
            fillColor.setFill()
            context.fill(rectangle)
        }
        
        // Display the generated image in a UIImageView
        let imageView = UIImageView(image: image)
        imageView.center = view.center
        view.addSubview(imageView)
    }
}
