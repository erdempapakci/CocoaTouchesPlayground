/*
 
 */

import UIKit
enum AuthorType {
    case single, multiple
}

struct Book: Hashable {
    var title = ""
    var author = ""
    var pages = 0
    var year = 0
    var genre = ""
    var authType = AuthorType.single

    static var sections: [String] {
        return ["Fiction", "Non-Fiction"]
    }

    static var books: [String: [Book]] {
        return [
            "Fiction": [
                Book(title: "Peace Talks", author:"Jim Butcher", pages: 340, year: 2020),
                Book(title: "Battle Ground", author:"Jim Butcher", pages: 300, year: 2020),
                Book(title: "Neuromancer", author:"William Gibson", pages: 271, year: 1984),
                Book(title: "Snow Crash", author:"Neal Stephenson", pages: 480, year: 1992),
                Book(title: "Breasts and Eggs", author:"Mieko Kawakami", pages: 480, year: 2020),
                Book(title: "Where the Wild Ladies Are", author:"Neal Stephenson", pages: 480, year: 1992),
                Book(title: "Deacon King Kong", author:"James McBride", pages: 480, year: 2020),
                Book(title: "A Burning", author:"Megha Majumdar", pages: 480, year: 2019),
                Book(title: "I Hold a Wolf by the Ears", author:"Laura van den Berg", pages: 480, year: 2019),
                Book(title: "Snow Crash", author:"Neal Stephenson", pages: 480, year: 1992)
            ],
            "Non-Fiction": [
                Book(title: "UIKit Apprentice", author:"Fahim Farook & Matthijs Hollemans", pages: 1128, year: 2020, authType: AuthorType.multiple),
                Book(title: "Swift Apprentice", author:"The Ray Wenderlich Tutorial Team", pages: 500, year: 2020, authType: AuthorType.multiple)
            ]
        ]
    }

    static func booksFor(section: Int) -> [Book] {
        let sec = Book.sections[section]
        if let arr = Book.books[sec] {
            return arr
        }
        return []
    }
}
class MyViewController: UIViewController {
    
    private var scrollView: UIScrollView!
    private var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // View title
        title = "Books - Stack"
        view.backgroundColor = UIColor.white
        // Add scroll view
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(scrollView)
        // Add stack view
        stackView = UIStackView(frame: scrollView.bounds)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.distribution = .equalSpacing
        scrollView.addSubview(stackView)
        // Stack view constraings
        stackView.leftAnchor.constraint(equalTo: scrollView.leftAnchor, constant: 16).isActive = true
        stackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 16).isActive = true
        stackView.rightAnchor.constraint(equalTo: scrollView.rightAnchor, constant: -16).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -16).isActive = true
        // Load data
        loadData()
    }
    
    private func loadData() {
        // Clear up any previous child views
        for sv in stackView.subviews {
            sv.removeFromSuperview()
        }
        // Add new child views for content - sections
        for (index, section) in Book.sections.enumerated() {
            // Section configuration
            var config = UIListContentConfiguration.plainHeader()
            config.text = section
            // Section view
            var cv = UIListContentView(configuration: config)
            stackView.addArrangedSubview(cv)
            // Loop through Books for section
            for book in Book.booksFor(section: index) {
                config = UIListContentConfiguration.cell()
                config.image = book.authType == .single ? UIImage(systemName: "heart") : UIImage(systemName: "heart.fill")
                config.text = book.title
                config.secondaryText = book.author
                
                cv = UIListContentView(configuration: config)
                stackView.addArrangedSubview(cv)
            }
        }
    }
}
