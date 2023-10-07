/*
 url: This property represents the URL that is being opened. You can use this URL to determine the content or action associated with the URL.
 annotation: The annotation property provides additional context or information related to the URL. It can be of any type conforming to the NSCopying protocol.
 sourceApplication: This string property indicates the bundle identifier of the app that initiated the URL opening request. It can help you identify the source of the URL request.
 openInPlace: This Boolean property indicates whether the URL should be opened in the current scene (if possible) or in a new scene. If openInPlace is set to true, you may want to handle the URL within the current scene. If false, you may need to create a new scene to handle the URL.
 */

import UIKit

func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
    for context in URLContexts {
        let url = context.url
        let options = context.options
        let sourceApp = options.sourceApplication
        if url.absoluteString.contains("example.com") {
            // Handle URL from example.com
            // You can use the URL and sourceApplication to determine the action
        } else {
            // Handle other URLs as needed
        }
    }
}
