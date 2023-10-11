/*
 A UIStackView is a user interface element in UIKit on iOS that simplifies the creation and management of complex layouts by providing a way to stack views (subviews) either horizontally or vertically. It's a container view that automatically arranges its subviews in a row or column, depending on its axis property. The main advantages of using UIStackView include:

 Simplified Layout: UIStackView handles the layout of its subviews, reducing the need for explicit Auto Layout constraints.
 Dynamic Sizing: It automatically adjusts the size of its subviews to fill available space.
 Spacing: You can specify spacing between subviews.
 Alignment: It offers options for aligning subviews along the axis and within the stack view itself.
 Distribution: You can control how it distributes available space among its subviews.
 */


import UIKit
final class CustomStackView: UIStackView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    private func commonInit() {
        axis = .vertical
        alignment = .center
        distribution = .equalSpacing
        spacing = 16
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class ViewController: UIViewController {
    
    let customLabel: UILabel = {
        let temp = UILabel()
        temp.text = "Hello World"
        temp.font = .systemFont(ofSize: 15)
        temp.textColor = .red
        return temp
    }()
    let customLabel2: UILabel = {
        let temp = UILabel()
        temp.text = "Hello World2"
        temp.font = .systemFont(ofSize: 15)
        temp.textColor = .red
        return temp
    }()
    let stackView: CustomStackView = {
        let temp = CustomStackView()
        
        return temp
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        stackView.insertArrangedSubview(customLabel, at: 0)
        stackView.insertArrangedSubview(customLabel2, at: 1)
        view.addSubview(stackView)
        stackView.frame = .init(x: 50, y: 50, width: 100, height: 100)
        view.backgroundColor = .white
        
    }
}
