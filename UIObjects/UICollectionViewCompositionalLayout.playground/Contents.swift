//UICollectionViewCompositionalLayout works by combining different layout components to create a complete layout. These layout components include:
//
//Items: Items are the basic building blocks of a collection view layout. They represent the individual cells in the collection view.
//Groups: Groups are containers for items. They allow you to group items together and control how they are laid out.
//Sections: Sections are the highest level of organization in a collection view layout. They allow you to divide the collection view into different logical sections.
//You can combine these layout components to create any kind of collection view layout you can imagine. For example, you could create a layout with multiple columns, a staggered layout, or a layout with items of different sizes.
//
//UICollectionViewCompositionalLayout also provides a number of features for customizing the layout of your collection view. For example, you can:
//
//Control the size and spacing of items and groups.
//Align items and groups within their sections.
//Define custom scroll behaviors.
//Use layout attributes to control the appearance of individual items and groups.
//If you need to create a complex or customized collection view layout, UICollectionViewCompositionalLayout is the best option. It is a powerful and flexible tool that gives you complete control over the layout of your collection view.
//


import UIKit

class ViewController: UIViewController {
    
    let mockData = [UIColor.black, UIColor.red, UIColor.green, UIColor.orange, UIColor.white, UIColor.yellow, UIColor.purple,
                    UIColor.black, UIColor.red, UIColor.green, UIColor.orange, UIColor.white, UIColor.yellow, UIColor.purple,UIColor.black, UIColor.red, UIColor.green, UIColor.orange, UIColor.white, UIColor.yellow, UIColor.purple,UIColor.black, UIColor.red, UIColor.green, UIColor.orange, UIColor.white, UIColor.yellow, UIColor.purple]
    
    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: self.setLayout()!)
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "CustomCell")
       
        collectionView.dataSource = self
        collectionView.delegate = self
       
        view.addSubview(collectionView)
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

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mockData.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCollectionViewCell
        cell.backgroundColor = mockData[indexPath.item]
        return cell
      
    }
}
final class CustomCollectionViewCell: UICollectionViewCell {
  
}
