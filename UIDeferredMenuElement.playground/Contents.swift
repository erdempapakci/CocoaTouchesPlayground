/*
 Here are the key points about UIDeferredMenuElement:

 Deferred Loading: The main purpose of UIDeferredMenuElement is to support deferred loading of menu elements within a context menu. This means that the menu element is not immediately created when the context menu is presented but is created only when needed, typically when the user interacts with it.
 Customization: You can customize the appearance and behavior of the menu element by providing a block of code that defines its contents, such as title, image, and action, at the time of presentation.
 Complex Context Menus: UIDeferredMenuElement is particularly useful when you have a context menu with many dynamic or complex menu elements. Instead of creating and configuring all elements upfront, you can create them on-demand when the user requests them.
 Performance: Deferred loading can improve the performance of your app, especially if you have a large number of menu elements or if creating them involves complex calculations or network requests.
 */

import UIKit
class DeferredVC: UIViewController, UIContextMenuInteractionDelegate {
   
   
    
    private lazy var viewForContextMenu: UIView = {
       let temp = UIView()
        temp.backgroundColor = .red
        return temp
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewForContextMenu.frame = .init(x: 100, y: 100, width: 150, height: 150)
        view.addSubview(viewForContextMenu)
   
      
        let interaction = UIContextMenuInteraction(delegate: self)
        viewForContextMenu.addInteraction(interaction)
    }
    @objc func deleteAll() {
        
    }
   
    func makeContextMenu() -> UIMenu {
        let element = UIDeferredMenuElement { comp in
            let items = (1...3).map { UIAction(title: "\($0)") { _ in } }
           comp(items)
        }
        return UIMenu(title: "", children: [element])
    }
    
    func contextMenuInteraction(_ interaction: UIContextMenuInteraction, configurationForMenuAtLocation location: CGPoint) -> UIContextMenuConfiguration? {
        
        return UIContextMenuConfiguration(identifier: nil, previewProvider: nil) { suggestedActions  in
            
            return self.makeContextMenu()
        }
        
    }
    
}
