/*
 NSCachedURLResponse is a class in Apple's Foundation framework that represents a cached response to a URL request. It's commonly used for caching network responses, such as web content or data fetched from remote servers, to improve the performance and responsiveness of applications.

 Key features and concepts related to NSCachedURLResponse include:

 URL Caching: It's designed to store and manage cached responses for specific URLs. The cached responses can include data, headers, and other relevant information.
 Expiration: Cached responses can have expiration policies, which determine how long a response remains valid before it is considered stale and needs to be revalidated by a new network request.
 Etag and Last-Modified: NSCachedURLResponse can store information about the original request, including the Etag and Last-Modified headers. This allows for conditional requests to check if a cached response is still valid.
 Disk and Memory Cache: Cached responses can be stored either in memory or on disk, depending on how they are configured.
 Cache Policies: You can set cache policies for responses, including whether they can be used offline, whether they should be stored persistently, and how long they should be considered valid.
 Cache Control Headers: The behavior of the cache can be influenced by the Cache-Control and Pragma headers in the HTTP response.
 */

import UIKit

final class Network {
    func handleData() {
        let url = URL(string: "example")!
        let request = URLRequest(url: url)
        if let cachedResponse = URLCache.shared.cachedResponse(for: request) {
            let cachedData = cachedResponse.data
            if let cachedString = String(data: cachedData, encoding: .utf8) {
                print(cachedString)
            }
        } else {
            let task = URLSession.shared.dataTask(with: request) { data, res, err in
            
                let cachedResponse = CachedURLResponse(response: res!, data: data!)
            
                URLCache.shared.storeCachedResponse(cachedResponse, for: request)
            }
        }
    }
}
