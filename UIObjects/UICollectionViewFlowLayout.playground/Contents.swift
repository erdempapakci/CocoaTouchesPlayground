import UIKit

private func setupLayout() -> UICollectionViewLayout {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .vertical
    layout.itemSize = .init(width: 100, height: 300)
    layout.sectionInset = .init(top: 1, left: 1, bottom: 1, right: 1)
 
    return layout
    
}
