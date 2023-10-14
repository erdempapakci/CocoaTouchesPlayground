/*
 NSSortDescriptor is a class in Apple's Foundation framework used for sorting collections of data, primarily arrays and arrays of dictionaries. It provides a convenient way to define sorting criteria for objects within an array, allowing you to sort them based on one or more properties or keys.

 Key points about NSSortDescriptor:

 Sorting Criteria: NSSortDescriptor defines a set of sorting criteria used to order objects within a collection. You specify the key or keys by which to sort the objects and whether the sort order should be ascending or descending.
 Support for Multiple Criteria: You can create multiple NSSortDescriptor instances and combine them to specify a more complex sort order. This is useful when you want to sort data based on multiple properties, and you can define a priority for each sort descriptor.
 Support for Key-Value Coding (KVC): NSSortDescriptor relies on Key-Value Coding to access the values of properties in objects. It can be used with classes that conform to KVC, which includes most Foundation classes and custom classes that follow KVC conventions.
 Mutable or Immutable: NSSortDescriptor comes in mutable and immutable variants. You can create an immutable sort descriptor when you have defined your sort criteria, or you can use a mutable sort descriptor to change the sorting properties at runtime.
 Usage in Sorting Methods: NSSortDescriptor is commonly used with various sorting methods provided by Foundation and AppKit/UIKit. For example, you can use it with NSArray's sortedArray(using:) or NSMutableArray's sort(using:) methods.
 */

import UIKit

let people = [
    ["name": "Alice", "age": 30],
    ["name": "Bob", "age": 25],
    ["name": "Charlie", "age": 35]
]
let sortDescriptor = NSSortDescriptor(key: "age", ascending: true)
let sortedPeople = (people as NSArray).sortedArray(using: [sortDescriptor]) as! [[String: Any]]
for person in sortedPeople {
    print("Name: \(person["age"])")
}
