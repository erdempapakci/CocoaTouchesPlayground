/*
 
 */

import UIKit

final class CustomScrollView: UIScrollView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    private func commonInit() {
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class ViewController: UIViewController {
    
    
    private let customView: UIView = {
       let temp = UIView()
        temp.backgroundColor = .blue
     
        return temp
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
         let scrollView = CustomScrollView(frame: .init(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        scrollView.contentSize = .init(width: view.frame.width, height: view.frame.height + 300)
        customView.frame = scrollView.frame
        view.addSubview(scrollView)
        scrollView.addSubview(customView)
      
    }
}
