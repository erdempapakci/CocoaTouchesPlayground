import UIKit


class ViewController3: UIViewController, UIContextMenuInteractionDelegate {
    func contextMenuInteraction(_ interaction: UIContextMenuInteraction, configurationForMenuAtLocation location: CGPoint) -> UIContextMenuConfiguration? {
        
        return UIContextMenuConfiguration(identifier: nil, previewProvider: nil) { suggestedActions in
            return self.makeContextMenu()
        }
        
    }
    
   
    
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
     
        let delete = UICommand(title: "Delete",  action: #selector(deleteAll))
     
        let edit = UIMenu(title: "Edit...", children: [delete])
      
        return edit
    }
}









