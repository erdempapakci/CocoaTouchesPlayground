/*
 NSComparisonPredicate is a class in Apple's Foundation framework that represents a predicate based on a comparison between two expressions. It's often used to filter, sort, or perform queries on collections of objects, such as arrays or Core Data entities.

 Key features and concepts related to NSComparisonPredicate include:

 Comparison Operators: NSComparisonPredicate allows you to define comparisons using various operators, such as equal to, not equal to, greater than, less than, contains, begins with, ends with, and more.
 Expressions: Predicates involve two expressions: the left expression and the right expression. These expressions can be attribute names, constants, or key paths.
 Options: You can specify options to control the behavior of the predicate, such as case-insensitive comparisons or diacritic-insensitive comparisons for strings.
 Compound Predicates: You can combine multiple predicates using compound predicates like NSCompoundPredicate, which includes logical operators (AND, OR, NOT).
 */

import UIKit

let people: [[String: Any]] = [
    ["name": "Alice", "age": 30],
    ["name": "Bob", "age": 25],
    ["name": "Charlie", "age": 35],
    ["name": "David", "age": 362]
]
let leftExpression = NSExpression(forKeyPath: "age")
let rightExpression = NSExpression(forConstantValue: 30)
let predicate = NSComparisonPredicate(leftExpression: leftExpression, rightExpression: rightExpression, modifier: .direct, type: .greaterThan)
let filteredPeople = (people as NSArray).filtered(using: predicate)
    print(filteredPeople)
