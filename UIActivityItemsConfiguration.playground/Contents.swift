/*
 
UIActivityItemsConfiguration is a class introduced in iOS 13 and later as part of the UIKit framework. It's used to configure the data and metadata that your app shares with the iOS sharing system. This class allows you to provide multiple items for sharing, each with its own associated metadata, such as titles, previews, and custom actions.

Here's what UIActivityItemsConfiguration represents and how it is typically used:

1. Multiple Items: Unlike its predecessor UIActivityItemProvider, which is designed for providing a single item, UIActivityItemsConfiguration allows you to provide an array of items to be shared. These items can be of various types, including text, URLs, images, and more.

2. Metadata: For each item, you can provide metadata that describes it. This metadata can include a title, a custom preview, and actions that users can perform on the item. Metadata allows you to provide context and enhance the sharing experience.

3. Customization: You can customize how items appear in the share sheet, including their order, titles, previews, and actions. This allows you to create a tailored sharing experience that aligns with your app's branding and functionality.

4. Dynamic Data: You can provide items and metadata dynamically, which means you can compute or fetch the data when needed, making it efficient and flexible.

5. Multiple Representations: You can provide multiple representations of an item, such as plain text and attributed text, to accommodate different sharing options.

Here's a basic example of how to create a UIActivityItemsConfiguration:
*/

import UIKit

// Create a UIActivityItemsConfiguration instance.
let configuration = UIActivityItemsConfiguration(objects: ["Hello, World!", URL(string: "https://example.com")!])

// Configure metadata for the first item.
let textItem = configuration.object(at: 0)
textItem.title = "Share Text"
textItem.preview = "This is a simple text message."

// Configure metadata for the second item.
let urlItem = configuration.object(at: 1)
urlItem.title = "Visit Website"
urlItem.preview = "Example Website"
urlItem.actions = [
    UIAction(title: "Open", handler: { action in
        // Handle the "Open" action here.
    }),
    UIAction(title: "Copy URL", handler: { action in
        // Handle the "Copy URL" action here.
    })
]

// Create a UIActivityViewController with the configuration.
let activityViewController = UIActivityViewController(activityItemsConfiguration: configuration, completionHandler: { activityType, completed, returnedItems, activityError in
    // Handle the sharing completion here.
})

// Present the UIActivityViewController.
// self.present(activityViewController, animated: true, completion: nil)
