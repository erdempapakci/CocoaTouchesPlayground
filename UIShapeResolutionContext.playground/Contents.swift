/*
 
 UIShapeResolutionContext is a class that provides a resolution-independent context for drawing shapes. It can be used to draw shapes that look good on devices with different screen resolutions.

 UIShapeResolutionContext objects are created using the UIShapeResolutionContext.init(scale:) method. The scale: parameter specifies the scale of the context. The scale is a number that represents the ratio of the device's pixel density to the default pixel density.

 Once you have created a UIShapeResolutionContext object, you can use it to draw shapes by calling the draw(_:) method. The draw(_:) method takes a CGPath object as its parameter. The CGPath object defines the shape that you want to draw.
 */
