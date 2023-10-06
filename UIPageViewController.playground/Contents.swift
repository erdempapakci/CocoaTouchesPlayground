

/*
 Page-Based Navigation: UIPageViewController is designed for presenting content in a series of pages, similar to a book or a slideshow. Each page is typically represented by a view controller.
 Transition Styles: You can choose from several transition styles to define how pages are navigated, including "scroll," "page curl," and "scroll with overlap." The transition style determines the animation when moving between pages.
 Data Source: You need to implement a data source, typically adopting the UIPageViewControllerDataSource protocol. The data source provides the view controllers to be displayed as pages and controls the order and content of the pages.
 Delegate: UIPageViewController has a delegate (adopting the UIPageViewControllerDelegate protocol) that allows you to respond to user interactions and page transitions.
 Spine Location: For certain transition styles, you can specify the location of the spine, which affects the orientation of pages in a double-sided layout (e.g., book-like navigation).
 */
import UIKit

class MyPageViewController: UIPageViewController, UIPageViewControllerDataSource {
    
    // Define your content view controllers
    let pageViewControllers: [UIViewController] = [
        UIViewController(), // Your first page content
        UIViewController(), // Your second page content
        UIViewController()  // Your third page content
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the data source
        dataSource = self
        
        // Set the initial view controller (first page)
        setViewControllers([pageViewControllers[0]], direction: .forward, animated: true, completion: nil)
    }
    
    // MARK: - UIPageViewControllerDataSource
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        // Return the previous view controller (or nil if there's none)
        guard let currentIndex = pageViewControllers.firstIndex(of: viewController), currentIndex > 0 else {
            return nil
        }
        return pageViewControllers[currentIndex - 1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        // Return the next view controller (or nil if it's the last page)
        guard let currentIndex = pageViewControllers.firstIndex(of: viewController), currentIndex < pageViewControllers.count - 1 else {
            return nil
        }
        return pageViewControllers[currentIndex + 1]
    }
}
