import CoreImage
import UIKit

// Define a custom kernel function
let customKernelCode =
    """
    kernel vec4 customFilter(__sample source) {
        // Read the pixel color from the source image
        vec4 color = unpremultiply(source);

        // Apply a custom operation (e.g., invert colors)
        color.rgb = vec3(1.0 - color.r, 1.0 - color.g, 1.0 - color.b);

        // Return the modified color
        return premultiply(color);
    }
    """
