import UIKit

class ViewController: UIViewController {

    private lazy var iView: UIImageView = {
        let image = UIImage(systemName: "heart")
        let temp = UIImageView(image: image)
       
     return temp
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
       
        iView.frame = .init(x: 100, y: 100, width: 150, height: 150)
        view.addSubview(iView)
        
        let dragInteraction = UIDragInteraction(delegate: self)
        dragInteraction.isEnabled = true
        let dropInteraction = UIDropInteraction(delegate: self)
        view.addInteraction(dropInteraction)
        iView.addInteraction(dragInteraction)
        iView.isUserInteractionEnabled = true
    }
    func updateLayers(forDropLocation dropLocation: CGPoint) {
     if iView.frame.contains(dropLocation) {
       view.layer.borderWidth = 0.0
         iView.layer.borderWidth = 2.0
     }
     else if view.frame.contains(dropLocation) {
       view.layer.borderWidth = 5.0
         iView.layer.borderWidth = 0.0
     } else {
       view.layer.borderWidth = 0.0
         iView.layer.borderWidth = 0.0
     }
    }
}
extension ViewController: UIDragInteractionDelegate {
    func dragInteraction(_ interaction: UIDragInteraction, itemsForBeginning session: UIDragSession) -> [UIDragItem] {
        guard let image = iView.image else {return []}
        let provider = NSItemProvider(object: image)
        let item = UIDragItem(itemProvider: provider)
        item.localObject = image
        return [item]
    }
    
}
extension ViewController: UIDropInteractionDelegate {
    func dropInteraction(_ interaction: UIDropInteraction, canHandle session: UIDropSession) -> Bool {
        return session.hasItemsConforming(toTypeIdentifiers: [kCIAttributeTypeImage as String]) && session.items.count == 1
    }
    func dropInteraction(_ interaction: UIDropInteraction, sessionDidUpdate session: UIDropSession) -> UIDropProposal {
        let dropLocation = session.location(in: view)
        updateLayers(forDropLocation: dropLocation)
        let operation: UIDropOperation
        if iView.frame.contains(dropLocation) {
            operation = .move
        } else {
            operation = .cancel
        }
        return UIDropProposal(operation: operation)
    }
    func dropInteraction(_ interaction: UIDropInteraction, performDrop session: UIDropSession) {
         // Consume drag items (in this example, of type UIImage).
       session.loadObjects(ofClass: UIImage.self) {imageItems in
    let images = imageItems as! [UIImage]
             /*
             If you do not employ the loadObjects(ofClass:completion:)
             convenience method of the UIDropSession class, which
             automatically employs the main thread, explicitly dispatch
             UI work to the main thread. For example, you can use
             DispatchQueue.main.async function.
             */
             self.iView.image = images.first
      }
      // Perform additional UI updates as needed.
       let dropLocation = session.location(in: view)
       updateLayers(forDropLocation: dropLocation)
    }
}

