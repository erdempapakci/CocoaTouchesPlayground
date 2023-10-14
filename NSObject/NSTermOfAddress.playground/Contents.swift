import UIKit

if #available(iOS 17, *) {
    let resource = LocalizedStringResource("^[They](referentConcept: 1) liked your post.")
    var options = AttributedString.LocalizationOptions()
    options.concepts = [.termsOfAddress([.neutral])]
    let result = AttributedString(localized: resource, options: options)
    print(result)
} else {
    // Fallback on earlier versions
}

