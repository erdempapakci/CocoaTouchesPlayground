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
        
        
        // Create a custom view to display the checkmark.
               let checkmarkView = UIImageView(image: UIImage(systemName: "heart.fill"))

               // Set the cell's accessory view to the custom view.
               cell.accessoryView = checkmarkView
        return cell
    }
    
    
}
