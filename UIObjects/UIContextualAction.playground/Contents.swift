import UIKit

class MyTableViewController: UITableViewController {

    var items: [String] = ["Item 1", "Item 2", "Item 3", "Item 4"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }

    // MARK: - Swipe Actions

    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {

        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, view, completionHandler) in
            // Handle the delete action here
            self.deleteItem(at: indexPath)
            completionHandler(true)
        }

        let shareAction = UIContextualAction(style: .normal, title: "Share") { (action, view, completionHandler) in
            print(view)
            // Handle the share action here
            self.shareItem(at: indexPath)
            completionHandler(true)
        }

        deleteAction.backgroundColor = .red
        shareAction.backgroundColor = .blue

        let actions = UISwipeActionsConfiguration(actions: [deleteAction, shareAction])
        return actions
    }

    func deleteItem(at indexPath: IndexPath) {
        // Delete the item from the data source and update the table view
        items.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
    }

    func shareItem(at indexPath: IndexPath) {
        // Share the item or perform the share action
        let itemToShare = items[indexPath.row]
        let shareActivityViewController = UIActivityViewController(activityItems: [itemToShare], applicationActivities: nil)
        present(shareActivityViewController, animated: true, completion: nil)
    }
}
