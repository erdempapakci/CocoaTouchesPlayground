
/*
 UIReferenceLibraryViewController is a UIKit class in iOS that provides a built-in user interface for looking up the definition of a word or term within the system's dictionary or reference library. It allows you to easily integrate dictionary look-up functionality into your app without having to implement a custom dictionary or reference system.
 */
import UIKit

class ViewController: UIViewController {
    
    // Create a UITextField programmatically
    let termTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter a term"
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add the UITextField to the view
        view.addSubview(termTextField)
        
        // Configure the constraints for the UITextField
        NSLayoutConstraint.activate([
            termTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            termTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            termTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        // Create a "Look Up" button
        let lookUpButton = UIButton(type: .system)
        lookUpButton.setTitle("Look Up", for: .normal)
        lookUpButton.addTarget(self, action: #selector(lookUpTerm), for: .touchUpInside)
        lookUpButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(lookUpButton)
        
        // Configure the constraints for the button
        NSLayoutConstraint.activate([
            lookUpButton.topAnchor.constraint(equalTo: termTextField.bottomAnchor, constant: 20),
            lookUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    @objc func lookUpTerm() {
        guard let term = termTextField.text else {
            return
        }
        
        if UIReferenceLibraryViewController.dictionaryHasDefinition(forTerm: term.lowercased()) {
            let referenceVC = UIReferenceLibraryViewController(term: term.lowercased())
            present(referenceVC, animated: true, completion: nil)
        } else {
            // Handle the case where the term is not found in the dictionary
            let alertController = UIAlertController(title: "Not Found", message: "The term is not in the dictionary.", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
    }
}



