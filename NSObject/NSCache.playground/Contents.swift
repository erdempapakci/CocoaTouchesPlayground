/*
 NSCache is a class in Apple's Foundation framework, available on iOS, macOS, and other Apple platforms, that provides a flexible and efficient way to store and manage cached data in memory. It's designed to temporarily store objects to improve the performance and responsiveness of your application by avoiding costly recomputation or fetching of data from slow sources.

 Key features and concepts related to NSCache include:

 In-Memory Cache: NSCache is an in-memory cache, which means it stores data in RAM. This allows for fast access and retrieval of cached items.
 Key-Value Storage: It stores objects as key-value pairs, where the key is typically an NSObject (e.g., a string) and the value is any NSObject subclass (e.g., an image, data, or custom object).
 Automatic Eviction: NSCache is designed to automatically evict objects from the cache when the system's memory is under pressure. It manages the cache efficiently to prevent memory-related issues.
 Cost-Based Eviction: You can assign a "cost" to each object stored in the cache. When the cache needs to evict items due to memory pressure, it will remove items starting from the highest cost.
 Thread Safety: NSCache is thread-safe, meaning it can be safely accessed from multiple threads or queues simultaneously.
 Delegate Methods: You can set a delegate to receive notifications when objects are evicted from the cache or when the cache is about to be purged.
 */
import UIKit

let cache = NSCache<NSString, UIImage>()
let image = UIImage(resource: ._1)
let key: NSString = "imageKey"
//    cache.setObject(image, forKey: key)

if let cachedImage = cache.object(forKey: key) {
    print("image found in cache")
    cache.removeObject(forKey: "imageKey")
} else {
    print("image not found in cache")
}
