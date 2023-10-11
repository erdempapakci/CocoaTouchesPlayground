
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let traitCollection = self.traitCollection
        if #available(iOS 17.0, *) {
            if traitCollection.sceneCaptureState == .active {
                // Update the interface to use a dark color scheme
                self.view.backgroundColor = .black
                
            } else {
                // Update the interface to use a light color scheme
                self.view.backgroundColor = .blue
                
            }
        } else {
            // Fallback on earlier versions
        }
    }
   
}







//
//class ViewController: UIViewController {
//
//    private var dataSource: UITableViewDiffableDataSource<TableSection, TableDTO>!
//    private lazy var tableView: UITableView = {
//        let temp = UITableView()
//        temp.delegate = self
//
//        temp.frame = view.bounds
//
//        temp.register(CustomTableCell.self, forCellReuseIdentifier: "customCellID")
//        return temp
//    }()
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        tableView.delegate = self
//        view.addSubview(tableView)
//        view.backgroundColor = .white
//        setDataSource()
//
//    }
//
//
//    private func setDataSource() {
//        dataSource = UITableViewDiffableDataSource(tableView: tableView, cellProvider: { tableView, indexPath, itemIdentifier in
//            let cell = tableView.dequeueReusableCell(withIdentifier: "customCellID") as! CustomTableCell
//            cell.title.text = itemIdentifier.title
//
//            return cell
//        })
//
//        setSnapShot()
//
//    }
//    private func setSnapShot() {
//
//        var snapShot = NSDiffableDataSourceSnapshot<TableSection, TableDTO>()
//        snapShot.appendSections([.first])
//        snapShot.appendItems(TableDTO.setMock())
//        dataSource.apply(snapShot)
//    }
//
//}
//
//
//extension ViewController: UITableViewDelegate {
//
//}

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


//final class SectionHeaderView: UITableViewHeaderFooterView {
//    static let reuseIdentifier: String = String(describing: SectionHeaderView.self)
//
//    var headerTitle: UILabel!
//
//    override init(reuseIdentifier: String?) {
//        super.init(reuseIdentifier: reuseIdentifier)
//
//       headerTitle = UILabel()
//        addSubview(headerTitle)
//
//        headerTitle.translatesAutoresizingMaskIntoConstraints = false
//
//        headerTitle.widthAnchor.constraint(equalToConstant: 24.0).isActive = true
//        headerTitle.heightAnchor.constraint(equalToConstant: 24.0).isActive = true
//        headerTitle.trailingAnchor.constraint(equalTo: contentView.layoutMarginsGuide.trailingAnchor).isActive = true
//        headerTitle.bottomAnchor.constraint(equalTo: contentView.layoutMarginsGuide.bottomAnchor).isActive = true
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }
//}

//private lazy var customView: UIView = {
//   let temp = UIView()
//    temp.translatesAutoresizingMaskIntoConstraints = false
//    temp.isUserInteractionEnabled = true
//    temp.backgroundColor = .red
//    return temp
//}()

//final class PopoverBackgroundView: UIPopoverBackgroundView {
//
//    private var offset = CGFloat(0)
//    private var arrow = UIPopoverArrowDirection.any
//    private var backgroundImageView: UIImageView!
//
//    override var arrowDirection: UIPopoverArrowDirection {
//        get { return arrow }
//        set { arrow = newValue }
//    }
//
//    override var arrowOffset: CGFloat {
//        get { return offset }
//        set { offset = newValue }
//    }
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setUpView()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        setUpView()
//    }
//
//    override static func contentViewInsets() -> UIEdgeInsets {
//        return .zero
//    }
//
//    override static func arrowHeight() -> CGFloat {
//        return 6
//    }
//
//    override class var wantsDefaultContentAppearance: Bool {
//        return false
//    }
//
//    override func layoutSubviews() {
//        super.layoutSubviews()
//
//        var backgroundImageViewFrame = bounds
//
//        switch arrowDirection {
//        case .down:
//            backgroundImageViewFrame.size.height -= PopoverBackgroundView.arrowHeight()
//        default:
//            backgroundImageViewFrame.size.width -= PopoverBackgroundView.arrowHeight()
//            backgroundImageViewFrame.origin.x += PopoverBackgroundView.arrowHeight()
//        }
//
//        backgroundImageView.frame = backgroundImageViewFrame
//    }
//
//    // MARK: - Private
//
//    private func setUpView() {
//        backgroundImageView = UIImageView(image: UIImage(systemName: "heart.fill"))
//        addSubview(backgroundImageView)
//
//        // Disable default shadow
//        layer.shadowColor = UIColor.clear.cgColor
//    }
//}
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Create a button to trigger the popover
//        let button = UIButton(type: .system)
//        button.setTitle("Show Popover", for: .normal)
//        button.addTarget(self, action: #selector(showPopover), for: .touchUpInside)
//        button.frame = CGRect(x: 50, y: 100, width: 200, height: 50)
//        view.addSubview(button)
//    }
//
//    @objc func showPopover() {
//        let contentViewController = UIViewController()
//
//
//        // Create your custom popover background view
//        let customPopoverBackgroundView = PopoverBackgroundView()
//
//        // Set up the content view controller and popover presentation
//        contentViewController.modalPresentationStyle = .popover
//        contentViewController.popoverPresentationController?.delegate = self
//        contentViewController.popoverPresentationController?.sourceView = view
//        contentViewController.popoverPresentationController?.sourceRect = CGRect(x: 100, y: 100, width: 1, height: 1) // Adjust sourceRect as needed
//        contentViewController.popoverPresentationController?.permittedArrowDirections = .any
//        contentViewController.popoverPresentationController?.popoverBackgroundViewClass = type(of: customPopoverBackgroundView)
//
//        // Present the content view controller
//        present(contentViewController, animated: true, completion: nil)
//    }
//}
//
//extension ViewController: UIPopoverPresentationControllerDelegate {
//    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
//        return .none
//    }
//}



//class PasteViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Create a "Copy" button
//        let copyButton = UIButton(type: .system)
//        copyButton.setTitle("Copy to Clipboard", for: .normal)
//        copyButton.addTarget(self, action: #selector(copyToClipboard), for: .touchUpInside)
//        copyButton.frame = CGRect(x: 50, y: 100, width: 200, height: 40)
//        view.addSubview(copyButton)
//
//        // Create a "Paste" button
//        let pasteButton = UIButton(type: .system)
//        pasteButton.setTitle("Paste from Clipboard", for: .normal)
//        pasteButton.addTarget(self, action: #selector(pasteFromClipboard), for: .touchUpInside)
//        pasteButton.frame = CGRect(x: 50, y: 200, width: 200, height: 40)
//        view.addSubview(pasteButton)
//    }
//
//    @objc func copyToClipboard() {
//        let textToCopy = "Hello, Clipboard!"
//
//        // Access the general pasteboard
//        let pasteboard = UIPasteboard.general
//
//        // Set the string to the pasteboard
//        pasteboard.string = textToCopy
//
//        // Optionally, you can also set other types of data, such as URLs or images
//        // pasteboard.URL = myURL
//        // pasteboard.images = [myImage]
//    }
//
//    @objc func pasteFromClipboard() {
//        // Access the general pasteboard
//        let pasteboard = UIPasteboard.general
//
//        // Retrieve the string from the pasteboard
//        if let copiedString = pasteboard.string {
//            // Use the copiedString as needed
//            print("Pasted string: \(copiedString)")
//        }
//    }
//}
//
//


//import UIKit
//
//class CustomPageControl: UIPageControl {
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        commonInit()
//    }
//
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        commonInit()
//    }
//
//    private func commonInit() {
//        numberOfPages = 6
//        currentPage = 1
//        pageIndicatorTintColor = .darkGray
//        currentPageIndicatorTintColor = .black
//    }
//}
//
//final class PageControlVC: UIViewController, UIPageControlProgressDelegate {
//
//    private lazy var pageControl: CustomPageControl = {
//        let temp = CustomPageControl()
//        if #available(iOS 17.0, *) {
//            let progress = UIPageControlProgress()
//            progress.delegate = self
//            progress.currentProgress = 1.0
//            temp.progress = progress
//        } else {
//            // Fallback on earlier versions
//        }
//        temp.translatesAutoresizingMaskIntoConstraints = false
//        return temp
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.addSubview(pageControl)
//        view.backgroundColor = .white
//
//        pageControl.frame = .init(x: 50, y: 50, width: 200, height: 100)
//    }
//}
//
//import UIKit
//
//class MyPageViewController: UIPageViewController, UIPageViewControllerDataSource {
//
//    // Define your content view controllers
//    let pageViewControllers: [UIViewController] = [
//        UIViewController(), // Your first page content
//        UIViewController(), // Your second page content
//        UIViewController()  // Your third page content
//    ]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Set the data source
//        dataSource = self
//
//        // Set the initial view controller (first page)
//        setViewControllers([pageViewControllers[0]], direction: .forward, animated: true, completion: nil)
//    }
//
//    // MARK: - UIPageViewControllerDataSource
//
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
//        // Return the previous view controller (or nil if there's none)
//        guard let currentIndex = pageViewControllers.firstIndex(of: viewController), currentIndex > 0 else {
//            return nil
//        }
//        return pageViewControllers[currentIndex - 1]
//    }
//
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
//        // Return the next view controller (or nil if it's the last page)
//        guard let currentIndex = pageViewControllers.firstIndex(of: viewController), currentIndex < pageViewControllers.count - 1 else {
//            return nil
//        }
//        return pageViewControllers[currentIndex + 1]
//    }
//}
