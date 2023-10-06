
/*
 UIPageControlProgress is a new property introduced in iOS 17. It allows developers to show the progress of a page control. This can be useful for showing users how far they are through a list of pages, or for indicating which page is currently being loaded.

 To use UIPageControlProgress, simply set the property to a value between 0 and 1. The value will represent the percentage of the page control that is filled in.
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

final class PageControlVC: UIViewController, UIPageControlProgressDelegate {
    
    private lazy var pageControl: CustomPageControl = {
        let temp = CustomPageControl()
        if #available(iOS 17.0, *) {
            let progress = UIPageControlProgress()
            progress.delegate = self
            progress.currentProgress = 1.0
            temp.progress = progress
        } else {
            // Fallback on earlier versions
        }
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


