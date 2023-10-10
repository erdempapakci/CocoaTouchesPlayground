/*
 Spell Checking: UITextChecker can identify misspelled words in a given text string. It uses a built-in dictionary and language-specific rules to check the spelling of words.
 Grammar Checking: While UITextChecker primarily focuses on spell checking, it can also identify some common grammatical errors, such as repeated words and punctuation issues.
 Suggestion Generation: When a misspelled word is detected, UITextChecker can provide a list of suggested corrections for the word. These suggestions are based on the closest matching words found in its dictionary.
 Custom Dictionaries: You can use custom dictionaries to supplement the built-in dictionary. This allows you to include industry-specific terms or user-specific vocabulary.
 Multiple Languages: UITextChecker supports multiple languages and can switch between dictionaries based on the language of the text being checked.
 Usage in Text Views and Text Fields: You can integrate UITextChecker with UITextView and UITextField to provide automatic spelling and grammar checking as users type.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let textChecker = UITextChecker()
        let textToCheck = "Helo, worrd!"

        let range = NSRange(location: 0, length: textToCheck.count)
        let misspelledRange = textChecker.rangeOfMisspelledWord(in: textToCheck, range: range, startingAt: 0, wrap: false, language: "en")

        if misspelledRange.location == NSNotFound {
            print("No misspelled words found.")
        } else {
            let misspelledWord = (textToCheck as NSString).substring(with: misspelledRange)
            print("Misspelled word: \(misspelledWord)")

            let suggestions = textChecker.guesses(forWordRange: misspelledRange, in: textToCheck, language: "en")
            print("Suggestions: \(suggestions ?? [])")
        }
    }
}
