/*
 Region Representation: A region is typically represented as a collection of non-overlapping rectangular paths. Each rectangular path within the region is specified by a CGRect. Regions can be created by combining multiple rectangular paths together.
 Operations: UIRegion supports various set operations, such as union, intersection, and difference, which allow you to combine or modify regions. These operations can be useful for creating complex shapes or for performing hit testing.
 Hit Testing: You can use a region to perform hit testing, which involves determining whether a point or a shape intersects with the region. This is commonly used in user interface components to handle touch events.
 Clipping and Masking: Regions can be used to clip or mask content. You can define a region and apply it as a clip path to a UIView or a CALayer, limiting the visible area of the content.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Define two rectangular regions
        let region1 = UIRegion(radius: 143)
      
        let region2 = UIRegion(radius: 33)

        // Check if a point is inside a region
        let pointToCheck = CGPoint(x: 75, y: 75)
        let isPointInRegion1 = region1.contains(pointToCheck)
        let isPointInRegion2 = region2.contains(pointToCheck)

        // Print the results
        print("Point is in Region 1: \(isPointInRegion1)")
        print("Point is in Region 2: \(isPointInRegion2)")
    }
}
