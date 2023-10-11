
/*
 UIPencilInteraction is a class introduced in iOS 13 that allows you to recognize and respond to interactions with an Apple Pencil on compatible devices, such as iPad Pro. This interaction is particularly useful for apps that want to provide specialized features or behaviors when users interact with their devices using the Apple Pencil.

 Key features and methods of UIPencilInteraction include:

 isEnabled: A property that allows you to enable or disable the pencil interaction.
 delegate: A property that specifies the delegate object that will receive notifications and events related to the pencil interaction.
 performsFirstActionWithFullPress: A property that determines whether the interaction recognizes the first action (e.g., selection or drawing) when the Pencil is pressed firmly.
 Delegate Methods: The UIPencilInteractionDelegate protocol defines several methods that allow you to respond to pencil-related events, such as when the Pencil is tapped, double-tapped, or when its state changes.

 */
import UIKit

class ViewController: UIViewController, UIPencilInteractionDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Create a UIPencilInteraction instance
        let pencilInteraction = UIPencilInteraction()
        
        // Set this view controller as the delegate
        pencilInteraction.delegate = self
        
        // Add the pencil interaction to the view
        view.addInteraction(pencilInteraction)
    }
    
    // MARK: - UIPencilInteractionDelegate methods
    
    func pencilInteractionDidTap(_ interaction: UIPencilInteraction) {
        // Respond to a tap with the Apple Pencil
        print("Pencil tapped")
    }
    
    func pencilInteractionDidDoubleTap(_ interaction: UIPencilInteraction) {
        // Respond to a double tap with the Apple Pencil
        print("Pencil double-tapped")
    }
}
