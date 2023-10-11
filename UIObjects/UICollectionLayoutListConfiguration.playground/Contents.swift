import UIKit

class ViewController2: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    // Example mock data
    let mockData = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]

    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a UICollectionLayoutListConfiguration
        let listConfiguration = UICollectionLayoutListConfiguration(appearance: .plain)
        
        // Create a UICollectionViewCompositionalLayout and use the listConfiguration
        let layout = UICollectionViewCompositionalLayout.list(using: listConfiguration)
        
        // Create the UICollectionView and set the layout
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        
        // Assign the data source and delegate to the UICollectionView
        collectionView.dataSource = self
        collectionView.delegate = self
        
        // Register the custom cell
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "CustomCell")
        
        // Add the UICollectionView to the view
        view.addSubview(collectionView)
    }

    // UICollectionViewDataSource methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mockData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCollectionViewCell
        
        // Set the cell content
        cell.titleLabel.text = mockData[indexPath.item]
        
        return cell
    }
}

final class CustomCollectionViewCell: UICollectionViewCell {
    var titleLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)

        // Create custom cell content
        titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleLabel)

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
