

import UIKit


class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        let firstVC = UIViewController()
        firstVC.tabBarItem = .init(title: "Search", image: .init(systemName: "circle"), tag: 0)
        firstVC.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)

        let secondVC = UIViewController()
        secondVC.tabBarItem = UITabBarItem(title: "Profile", image: .init(systemName: "circle"), tag: 1)
        firstVC.tabBarItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
        
       let viewControllers = [firstVC, secondVC]
        self.setViewControllers(viewControllers, animated: false)
        UITabBar.appearance().backgroundColor = .black
        UITabBar.appearance().tintColor = .white

    }

}
