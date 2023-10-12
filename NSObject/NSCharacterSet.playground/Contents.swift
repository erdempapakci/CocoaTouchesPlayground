/*
 NSCharacterSet is a class in Apple's Foundation framework that represents a set of Unicode characters. It's used for character-based operations and is particularly useful for tasks involving character validation, filtering, and manipulation. You can use NSCharacterSet to work with individual characters or character ranges.

 Key features and concepts related to NSCharacterSet include:

 Character Sets: NSCharacterSet allows you to define sets of characters that share common properties or characteristics.
 Built-in Character Sets: Foundation provides various built-in character sets for common tasks, such as testing for alphanumeric characters, whitespace characters, or decimal digit characters.
 Custom Character Sets: You can create custom character sets by adding or removing characters or character ranges based on your specific needs.
 Character Validation: NSCharacterSet is commonly used for validating user input, such as checking if a string contains only digits or if it's a valid email address.
 String Manipulation: You can use character sets to perform string manipulations, like removing or replacing characters that match a given set.
 */
import UIKit

// Create a custom character set
var customCharacterSet = NSCharacterSet(charactersIn: "ABC")

// Test if a string contains characters from the character set
let inputString = "A quick brown fox"
let hasCharacters = inputString.rangeOfCharacter(from: customCharacterSet as CharacterSet) != nil

if hasCharacters {
    print("The string contains characters from the custom character set.")
} else {
    print("The string does not contain characters from the custom character set.")
}

// Working with built-in character sets
let decimalCharacterSet = CharacterSet.decimalDigits
let testString = "12345"
let containsOnlyDigits = testString.rangeOfCharacter(from: decimalCharacterSet) == nil

if containsOnlyDigits {
    print("The string contains only decimal digits.")
} else {
    print("The string contains non-digit characters.")
}

