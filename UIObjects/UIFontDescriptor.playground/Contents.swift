
/*
 UIFontDescriptor is a class in UIKit that represents a font descriptor, which contains metadata and attributes about a font. Font descriptors are used to specify the characteristics of a font, such as its family, style, size, and other attributes. You can use UIFontDescriptor to create and customize fonts in iOS and tvOS applications.

 Here are some key aspects of UIFontDescriptor:

 Font Family: You can use a font descriptor to specify the font family, which represents a group of related fonts with similar designs. For example, "Helvetica Neue" is a font family that includes various styles like regular, bold, italic, etc.
 Font Style: Font descriptors allow you to specify the font style, which includes attributes like bold, italic, and other variations of a font family.
 Font Size: You can set the font size using a font descriptor to determine the size of the font when rendering text.
 Symbolic Traits: UIFontDescriptor includes symbolic traits such as bold, italic, expanded, condensed, and more. These traits can be used to request specific font variations.
 Custom Attributes: You can add custom attributes to a font descriptor to specify additional font characteristics, such as tracking (letter spacing), leading (line spacing), and more.
 */

import UIKit

// Create a font descriptor with custom attributes
let fontDescriptor = UIFontDescriptor(fontAttributes: [
    .family: "Arial",              // Font family
    .face: "Italic",               // Font style
    .size: 18.0,                   // Font size
    .traits: [
        .symbolic: UIFontDescriptor.SymbolicTraits.traitBold // Bold
    ]
])

// Create a font using the font descriptor
let customFont = UIFont(descriptor: fontDescriptor, size: 0.0)
