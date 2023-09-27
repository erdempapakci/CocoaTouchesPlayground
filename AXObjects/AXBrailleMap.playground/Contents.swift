import UIKit

//
//A braille map object represents a two-dimensional braille display that’s connected to the current Apple device. By specifying the dot patterns in the braille map, you can change the content the user experiences. To render the data from the braille map to the display, implement AXBrailleMapRenderer.

class MyAXMap: AXBrailleMap {
    
    override func setHeight(_ status: Float, at point: CGPoint) {
        super.setHeight(status, at: point)
    }
    
}
