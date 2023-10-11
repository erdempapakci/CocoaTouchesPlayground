/*
 UISearchTextField is a UIKit component introduced in iOS 13. It's part of the UISearchBar family and provides a text input field for searching within a UISearchBar. It's a more customizable and versatile way to interact with the search bar's text input than the previous UISearchBar text field.
 */

import UIKit

final class CustomSearchText: UISearchTextField, UISearchTextFieldDelegate {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    private func commonInit() {
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class ViewController: UIViewController  {

    let searchBar = UISearchBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        searchBar.frame = .init(x: 0, y: 50, width: view.frame.width, height: 50)
        let searchTextfield = CustomSearchText()
        searchBar.searchTextField.delegate = searchTextfield
        view.addSubview(searchBar)
      
    }
   
}
