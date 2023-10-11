import UIKit

final class SectionHeaderView: UITableViewHeaderFooterView {
    static let reuseIdentifier: String = String(describing: SectionHeaderView.self)

    var headerTitle: UILabel!

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)

       headerTitle = UILabel()
        addSubview(headerTitle)

        headerTitle.translatesAutoresizingMaskIntoConstraints = false

        headerTitle.widthAnchor.constraint(equalToConstant: 24.0).isActive = true
        headerTitle.heightAnchor.constraint(equalToConstant: 24.0).isActive = true
        headerTitle.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor).isActive = true
        headerTitle.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor).isActive = true
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
