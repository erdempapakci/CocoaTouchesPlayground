/*
 Search criteria in a search text field, represented by text and an optional icon.
 */

import UIKit


class ViewController: UIViewController, UISearchResultsUpdating {

    private let searchController = UISearchController(searchResultsController: nil)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Configure the search controller
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        
        // Add the search bar to the navigation bar
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        // Other view setup code
        view.backgroundColor = .white
        handleTokens()
    }
    private func handleTokens() {
        let token = UISearchToken(icon: .init(systemName: "heart.fill"), text: "Apple")
        let token2 = UISearchToken(icon: .init(systemName: "circle.fill"), text: "Swift")
        searchController.searchBar.searchTextField.insertToken(token, at: 0)
        searchController.searchBar.searchTextField.insertToken(token2, at: 1)
    }
    
    // MARK: - UISearchResultsUpdating
    
    func updateSearchResults(for searchController: UISearchController) {
        // Implement search results update logic here
        if let searchText = searchController.searchBar.text {
            print("Search for: \(searchText)")
        }
    }
}


