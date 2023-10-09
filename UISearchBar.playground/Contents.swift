/*
 UISearchBar is a UIKit component that provides a text field for entering search queries and a set of buttons for performing search-related actions. It's commonly used in iOS apps to allow users to search for content within a dataset, such as searching for items in an e-commerce app or searching for contacts in a contacts app.
 */

import UIKit
final class CustomSearchBar: UISearchBar {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    private func commonInit() {
        placeholder = ""
        showsCancelButton = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class ViewController: UIViewController {
    
    private lazy var searchBar: CustomSearchBar = {
        let temp = CustomSearchBar(frame: .init(x: view.bounds.minX, y: 50, width: view.bounds.width, height: 50))
        
        return temp
    }()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(searchBar)
     
        
      
    }
}
