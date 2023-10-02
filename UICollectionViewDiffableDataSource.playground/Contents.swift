/*
 
UICollectionViewDiffableDataSource is a powerful and efficient data source class introduced in iOS 13 that simplifies working with UICollectionView by providing a declarative and type-safe way to manage and update its data. It's a part of the "diffable data source" API introduced by Apple, which makes it easier to handle changes in your collection view's data.

Here are some key points about UICollectionViewDiffableDataSource:

1. Declarative Data Source: With UICollectionViewDiffableDataSource, you declare how your collection view should display its data. You define data sections, items, and their relationships in a type-safe manner.

2. Type-Safety: It ensures type safety by using Swift enums and structs to represent sections and items. This means that you won't need to work with IndexPath or manually manage section and item indices.

3. Snapshot-Based Updates: UICollectionViewDiffableDataSource uses a "snapshot" to represent the current state of your data. When your data changes, you create a new snapshot that describes the desired state, and the data source automatically animates the transition between snapshots.

4. Animations: Adding, removing, and updating items and sections is easy with UICollectionViewDiffableDataSource. It provides built-in support for animations when applying changes to the data.

5. Automatic Diffing: The data source automatically computes the differences between the old and new snapshots, minimizing the code required to update your collection view. This is particularly useful when dealing with dynamic data.

6. Composability: You can use multiple UICollectionViewDiffableDataSource instances in a single collection view to handle different sections or aspects of your data, making your code more modular and maintainable.

7. UIKit Integration: UICollectionViewDiffableDataSource integrates seamlessly with UIKit's collection view architecture, including supplementary views, cell registration, and more.

Here's a simple example of how to use UICollectionViewDiffableDataSource to manage data in a collection view:

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
