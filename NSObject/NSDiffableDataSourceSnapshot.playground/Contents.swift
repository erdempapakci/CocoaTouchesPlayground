/*
 NSDiffableDataSourceSnapshot is a class introduced in iOS 13 that's part of the Diffable Data Source framework. It's designed to work with UICollectionView and UITableView and provides a convenient way to manage and apply changes to the data source for these views using a "diffing" approach. This means you can efficiently update the data source by specifying the differences between the old and new data sets, and the snapshot takes care of animating the changes.

 Key concepts and methods related to NSDiffableDataSourceSnapshot include:

 Initial Snapshot: You start with an initial snapshot that represents the data structure of your collection view or table view. You populate this snapshot with sections and items.
 Section and Item Identifiers: You use unique identifiers to represent sections and items. These identifiers help the system understand how to update the data source when changes occur.
 Appending and Deleting: You can append items to sections or delete items from sections in the snapshot.
 Inserting and Deleting Sections: You can add or remove sections in the snapshot.
 Reloading Items and Sections: You can mark items and sections as needing reloading, which will trigger animation for those items or sections.
 Applying Snapshots: Once you've constructed the desired changes in the snapshot, you apply it to your data source, and the data source takes care of animating the updates in your collection view or table view.
 */
import UIKit

class ViewController3: UIViewController {
    enum Section {
        case main
    }
    
    struct Item: Hashable {
        let color: UIColor
    }
    let mockData = [UIColor.black, UIColor.red, UIColor.green, UIColor.orange, UIColor.white, UIColor.yellow, UIColor.purple]
    
    var collectionView: UICollectionView!
    private var dataSource: UICollectionViewDiffableDataSource<Section, Item>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: self.setLayout()!)
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "CustomCell")
       
        collectionView.delegate = self
     
        view.addSubview(collectionView)
        dataSource = UICollectionViewDiffableDataSource<Section, Item>(collectionView: collectionView) { collectionView, indexPath, itemIdentifier in
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath)
            cell.backgroundColor = itemIdentifier.color
            
            return cell
        }
        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>()
        snapshot.appendSections([.main])
        let mappedData = mockData.map { color in
            Item(color: color)
        }
        
        snapshot.appendItems(mappedData)
        
        dataSource.apply(snapshot, animatingDifferences: false)
     
    }
   
    private func setLayout() -> UICollectionViewCompositionalLayout?{
        
           
        if #available(iOS 16.0, *) {
            
          
            let fullPhotoItem = NSCollectionLayoutItem(
              layoutSize: NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1.0),
                heightDimension: .fractionalWidth(2/3)))

            fullPhotoItem.contentInsets = NSDirectionalEdgeInsets(
              top: 2,
              leading: 2,
              bottom: 2,
              trailing: 2)
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2),
                                                   heightDimension: .fractionalHeight(1/3))
            
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, repeatingSubitem: fullPhotoItem, count: 2)
                                                        
          
            let section = NSCollectionLayoutSection(group: group)
            return UICollectionViewCompositionalLayout(section: section)
            
        } else {
            return nil
        }
        

        
    }
   
}

extension ViewController3: UICollectionViewDelegate {
   
}
final class CustomCollectionViewCell: UICollectionViewCell {
  
}
