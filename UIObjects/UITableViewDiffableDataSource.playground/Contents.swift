import UIKit

class ViewController: UIViewController {

    private var dataSource: UITableViewDiffableDataSource<TableSection, TableDTO>!
    private lazy var tableView: UITableView = {
        let temp = UITableView()
        temp.delegate = self
      
        temp.frame = view.bounds
        temp.register(CustomTableCell.self, forCellReuseIdentifier: "customCellID")
        return temp
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        view.addSubview(tableView)
        view.backgroundColor = .white
        setDataSource()
    
    }
    private func setDataSource() {
        dataSource = UITableViewDiffableDataSource(tableView: tableView, cellProvider: { tableView, indexPath, itemIdentifier in
            let cell = tableView.dequeueReusableCell(withIdentifier: "customCellID") as! CustomTableCell
            cell.title.text = itemIdentifier.title
            return cell
        })
        setSnapShot()
        
    }
    private func setSnapShot() {
        
        var snapShot = NSDiffableDataSourceSnapshot<TableSection, TableDTO>()
        snapShot.appendSections([.first])
        snapShot.appendItems(TableDTO.setMock())
        dataSource.apply(snapShot)
    }

}
enum TableSection: Hashable {
    case first
}
struct TableDTO: Hashable {
    let title: String?
    let subtitle: String?
    static func setMock() -> [Self] {
        return [
        TableDTO(title: "a", subtitle: "A"),
        TableDTO(title: "b", subtitle: "B"),
        TableDTO(title: "c", subtitle: "C"),
        ]
    }
}

extension ViewController: UITableViewDelegate {
    
}

final class CustomTableCell: UITableViewCell{
     lazy var title: UILabel = {
       let temp = UILabel()
        temp.frame = frame
        return temp
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addSubview(title)
      
    }
}
