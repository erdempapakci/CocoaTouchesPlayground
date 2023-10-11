

import UIKit

/*
 Loading Images: You can create UIImage instances by loading images from various sources, such as image files bundled with your app, images from the device's photo library, images fetched from a network, or images generated dynamically in your code.
 */
// Load an image from an asset catalog
let image = UIImage(named: "myImage")

// Load an image from a file in your app's bundle
if let imagePath = Bundle.main.path(forResource: "myImage", ofType: "png") {
    let image = UIImage(contentsOfFile: imagePath)
}

/*
 Displaying Images: UIImage is commonly used to display images in UIImageView elements within your user interface.
 */

let imageView = UIImageView(image: image)
