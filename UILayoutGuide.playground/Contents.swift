

/*
 
 on-Rendering: UILayoutGuide is a non-rendering object, meaning it doesn't draw anything on the screen. It's used solely for layout purposes and doesn't have a visible representation.
 Lightweight: Unlike actual views, UILayoutGuide instances are lightweight and don't consume memory or affect the view hierarchy's rendering performance.
 Alignment and Spacing: You can use UILayoutGuide to define regions within a view where you want to align or space subviews. For example, you can create horizontal and vertical guides to control the spacing between elements or align them precisely.
 Auto Layout: UILayoutGuide integrates seamlessly with Auto Layout. You can attach constraints to a UILayoutGuide to control the position, size, and alignment of subviews. This is especially helpful when creating complex layouts or when you want to achieve fine-grained control over your UI.
 UIView Integration: You add a UILayoutGuide to a UIView using the addLayoutGuide(_:) method. Once added, you can reference the layout guide in your Auto Layout constraints.
 */
import UIKit

class MyViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let view1 = UIView()
        view1.backgroundColor = .systemBlue
        view.addSubview(view1)
        
        let view2 = UIView()
        view2.backgroundColor = .systemRed
        view.addSubview(view2)
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        let topGuide = UILayoutGuide()
        let bottomGuide = UILayoutGuide()
   
        view1.addLayoutGuide(bottomGuide)
        view.addLayoutGuide(topGuide)
        
        NSLayoutConstraint.activate([
            topGuide.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topGuide.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topGuide.topAnchor.constraint(equalTo: view.topAnchor),
            topGuide.heightAnchor.constraint(equalToConstant: 100),
            
            bottomGuide.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomGuide.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomGuide.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomGuide.heightAnchor.constraint(equalToConstant: 100),
            
            view1.leadingAnchor.constraint(equalTo: topGuide.leadingAnchor),
            view1.trailingAnchor.constraint(equalTo: topGuide.trailingAnchor),
            view1.topAnchor.constraint(equalTo: topGuide.bottomAnchor),
            view1.bottomAnchor.constraint(equalTo: bottomGuide.topAnchor)
          
        ])
    
        
    }
}
