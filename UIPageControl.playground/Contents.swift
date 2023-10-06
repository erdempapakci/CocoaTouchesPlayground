/*
 UIPageControl is a user interface component in UIKit for iOS that is typically used to indicate and control the current page in a set of multiple pages, such as in a paged scroll view or a tutorial slideshow. It is commonly displayed as a row of dots, where each dot represents a page, and the currently selected page is highlighted.

 Key properties and methods of UIPageControl include:

 numberOfPages: An integer property that specifies the total number of pages to be displayed.
 currentPage: An integer property that specifies the currently selected page. You can programmatically set this property to change the current page.
 hidesForSinglePage: A boolean property that determines whether the page control is hidden when there is only one page. If set to true, the page control is hidden; if set to false, it is displayed even for a single page.
 pageIndicatorTintColor: The color of the dots representing inactive pages.
 currentPageIndicatorTintColor: The color of the dot representing the current page.
 defersCurrentPageDisplay: A boolean property that determines whether the update of the current page is deferred. If set to true, you must manually call the updateCurrentPageDisplay() method to update the page control's appearance.
 updateCurrentPageDisplay(): A method that updates the page control's appearance to reflect the current page. This method should be called if defersCurrentPageDisplay is set to true.
 sizeForNumberOfPages(_:): A class method that calculates the optimal size for the page control based on the number of pages.
 */


import UIKit

class CustomPageControl: UIPageControl {

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        numberOfPages = 6
        currentPage = 1
        pageIndicatorTintColor = .darkGray
        currentPageIndicatorTintColor = .black
    }
}

final class PageControlVC: UIViewController {
    
    private lazy var pageControl: CustomPageControl = {
        let temp = CustomPageControl()
        temp.translatesAutoresizingMaskIntoConstraints = false
        return temp
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(pageControl)
        view.backgroundColor = .white
        
        pageControl.frame = .init(x: 50, y: 50, width: 200, height: 100)
    }
}


