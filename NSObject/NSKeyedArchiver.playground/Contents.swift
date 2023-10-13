/*
 NSKeyedArchiver is a class in Apple's Foundation framework that provides a way to encode (serialize) objects and data structures into a binary format, which can be saved to a file or transmitted over a network. This encoding is often used to persist data, such as user preferences, application state, and more, or to send data between apps or devices.

 Key features and use cases of NSKeyedArchiver:

 Object Serialization: It's used for serializing objects into a binary format that can be saved to a file or transmitted over a network.
 Data Persistence: You can use NSKeyedArchiver to persist application data, including custom data structures, by encoding them to a file. Later, you can use NSKeyedUnarchiver to decode the data and restore it.
 Interprocess Communication: When sharing data between different parts of your application or between different applications, you can use NSKeyedArchiver to encode complex objects and send them as binary data.
 Cross-Platform Compatibility: The archive format created by NSKeyedArchiver is platform-independent, allowing you to exchange data between different Apple platforms and versions of your app.

 */
import Foundation
class CoderClass: NSObject, NSCoding {
    
    
    var title: String!
    var subtitle: String!
    init(title: String!, subtitle: String!) {
        self.title = title
        self.subtitle = subtitle
    }
    
    required init?(coder: NSCoder) {
        title = coder.decodeObject(forKey: "title") as? String
        subtitle = coder.decodeObject(forKey: "subtitle") as? String


    }
    func encode(with coder: NSCoder) {
        coder.encode(title, forKey: "title")
        coder.encode(subtitle, forKey: "subtitle")

    }
}


let coderClass = [
    CoderClass(title: "Erdem", subtitle: "Edu"),
    CoderClass(title: "Berken", subtitle: "Berko")
        ]
let archiver = NSKeyedArchiver.archivedData(withRootObject: coderClass)


