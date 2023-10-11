import UIKit


final class FocusVC: UIViewController {
    
    var greenView: UIView = {
        let temp = UIView()
        temp.backgroundColor = .green
        return temp
    }()
    var blueView: UIView = {
        let temp = UIView()
        temp.backgroundColor = .blue
        return temp
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        greenView.frame = .init(x: 100, y: 100, width: 100, height: 100)
        blueView.frame = .init(x: 100, y: 700, width: 100, height: 100)
        view.addSubview(greenView)
        view.addSubview(blueView)
        let focusEffect = UIFocusHaloEffect(roundedRect: .zero, cornerRadius: 10, curve: .circular)
        
        greenView.focusEffect = focusEffect
             
           
        
    }
    
}
