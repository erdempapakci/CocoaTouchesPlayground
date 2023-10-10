
/*
 Swipe Actions: It is often used to implement swipeable actions, where the user can swipe a table view cell left or right to reveal a set of custom actions associated with that cell.
 Customization: You can customize the appearance of the action, including its title, background color, and image. This allows you to create actions that match the visual style of your app.
 Action Handler: When the user selects one of the row actions, you can specify a closure or selector that is executed in response to the action. This allows you to perform custom actions, such as deleting a row, sharing content, or marking an item as a favorite.
 Editing Style: You can specify whether the action should be available for editing on the leading (left) or trailing (right) side of the cell, or both. The editing style determines the direction in which the user needs to swipe to reveal the action.
 */
import UIKit

//extension ViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
//        let deleteAction = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexPath) in
//                // Handle the delete action here
//                self.data.remove(at: indexPath.row)
//                tableView.deleteRows(at: [indexPath], with: .fade)
//            }
//            
//            let shareAction = UITableViewRowAction(style: .normal, title: "Share") { (action, indexPath) in
//                // Handle the share action here
//                let textToShare = self.data[indexPath.row]
//                let activityViewController = UIActivityViewController(activityItems: [textToShare], applicationActivities: nil)
//                self.present(activityViewController, animated: true, completion: nil)
//            }
//            
//            return [deleteAction, shareAction]
//    }
//}
