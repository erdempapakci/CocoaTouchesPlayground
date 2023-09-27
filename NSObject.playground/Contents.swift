import UIKit

/*
 
NSObject is a fundamental class in Objective-C and Cocoa programming. In Swift, it serves as a bridge between Swift and Objective-C code. Here's what it represents:

Root Class: NSObject is the root class of most Objective-C class hierarchies. This means that virtually all classes in Objective-C are ultimately derived from NSObject. When you inherit from NSObject in a Swift class, you gain some compatibility with Objective-C, which can be useful when working with libraries or APIs that are primarily Objective-C-based.
 
Objective-C Compatibility: By inheriting from NSObject, you can use your Swift class in Objective-C code seamlessly. This can be important if you're working in an environment where both Swift and Objective-C are used, such as when developing for iOS or macOS.
 
Foundation Framework: NSObject is part of the Foundation framework, which provides a collection of classes for common data types, data storage, and inter-process communication. Importing Foundation brings in not only NSObject but also many other classes and utilities that are helpful in app development.
 
In the provided Swift code, by inheriting from NSObject, the MyObject class gains some of the benefits of Objective-C compatibility. While this simple example doesn't show direct interaction with Objective-C, it sets the foundation for working with Objective-C libraries or components in more complex projects.
 
   */

import Foundation

// NSObject is a fundamental class compatible with both Objective-C and Swift.
// This class enables seamless integration between Objective-C and Swift code.

// Let's create a custom class and derive it from NSObject.
class MyObject: NSObject {
    // Define a property named 'name' to hold a string value.
    var name: String
    
    // By defining an initializer method named 'init', we can set the 'name' property during object creation.
    init(name: String) {
        self.name = name
    }
    
    // Create a method named 'sayHello' that will print a message including the 'name' property.
    // The 'name' property is used within a string using string interpolation.
    func sayHello() {
        print("Hello, my name is \(name).")
    }
}

// Create an instance of the MyObject class, naming it 'myInstance', and initialize it with the name 'John'.

// Call the 'sayHello' method on 'myInstance' to print the message to the console.
