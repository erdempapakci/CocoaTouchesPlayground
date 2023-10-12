/*
 
 Array    NSArray/NSMutableArray
 It belongs to Swift library.    It belongs to the Objective-C foundation.
 Provide more flexibility.    A bit complex to use for beginners.
 Use let and var keywords to declare an array.    NSArray is immutable and NSMutableArray is a mutable type.
 It is a struct type in Swift language.    These are the class type of Objective-C.
 */

import Foundation

// Create an immutable NSArray
var myNSArray = NSArray(objects: "one", "two", "three")

// Create a mutable Array
var myArray = ["one", "two", "three"]

// Try to append a new object to the NSArray. This will fail.

//myNSArray.append("four")

// Try to append a new object to the Array. This will succeed.
myArray.append("four")

// Compare the contents of the two arrays
print("NSArray contents: \(myArray)")
print("Array contents: \(myArray)")
