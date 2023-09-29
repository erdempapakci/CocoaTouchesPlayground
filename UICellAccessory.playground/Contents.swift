

// UICellAccessory is a type of view that can be added to a cell in a table view or collection view.
  // It is typically used to provide additional information about the cell or to allow the user to perform an action on the cell.

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    

}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Set the cell's accessory type to disclosure indicator.
        
        cell.accessoryType = .checkmark
       
        return cell
    }
    
    
}
