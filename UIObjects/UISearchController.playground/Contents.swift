/*
 Search Bar: UISearchController includes a search bar component (UISearchBar) that you can integrate into your app's user interface. Users can enter search queries directly into the search bar.
 Search Results Controller: You can specify a separate view controller (searchResultsController) to display search results. When the user enters a search query, this view controller becomes visible, and you can use it to present the filtered search results.
 Search Results Updating: UISearchController conforms to the UISearchResultsUpdating protocol, allowing you to implement custom logic to filter and update the search results based on the user's input.
 Presentation Style: UISearchController can be configured to overlay the current view controller (.overCurrentContext) or push the search results controller onto the navigation stack (.push).
 Customization: You can customize the appearance of the search bar, including its style, placeholder text, and scope buttons. Additionally, you can customize the behavior of the search controller, such as whether it hides the navigation bar during search.
 Delegate Methods: There are delegate methods available for tracking search-related events, such as when the search controller becomes active, when it is dismissed, and when search results are updated.
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
    }
    
    // MARK: - UISearchResultsUpdating
    
    func updateSearchResults(for searchController: UISearchController) {
        // Implement search results update logic here
        if let searchText = searchController.searchBar.text {
            print("Search for: \(searchText)")
        }
    }
}
