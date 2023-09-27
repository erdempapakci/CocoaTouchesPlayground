import UIKit

// An object that contains all the semantic information about an accessible chart.

class MyAXCategoricalDataAxisDescriptor: AXCategoricalDataAxisDescriptor {
    
    override init(title: String, categoryOrder: [String]) {
        super.init(title: title, categoryOrder: categoryOrder)
    }
}
