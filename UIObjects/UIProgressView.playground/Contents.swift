/*
 UIProgressView is a UIKit component that displays the progress of a task or a process with a graphical representation. It is typically used to provide visual feedback to users about the completion status of a task.

 Key properties and methods of UIProgressView include:

 progress: A floating-point value that represents the progress of a task. This value should be between 0.0 (no progress) and 1.0 (complete).
 progressTintColor: The color of the filled portion of the progress bar that represents the completed progress.
 trackTintColor: The color of the unfilled portion of the progress bar that represents the remaining progress.
 setProgress(_:animated:): A method to set the progress value programmatically, optionally with animation.
 isHidden: A Boolean property to hide or show the progress view.
 progressViewStyle: An enumeration that specifies the style of the progress view. It can be set to .default or .bar.
 */
import UIKit
final class CustomProgressView: UIProgressView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    private func commonInit() {
        
        
        self.progressViewStyle = .default
        self.progressTintColor = .green
        self.trackTintColor = .gray
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func setProgress(_ progress: Float, animated: Bool) {
        super.setProgress(progress, animated: animated)
    }
    
}

class ViewController: UIViewController {
    
    private let progress = Progress(totalUnitCount: 10)
    private let progressView = CustomProgressView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Create a progress view
        
        progressView.center = view.center
        progressView.frame = .init(x: 50, y: 450, width: 200, height: 100)
        view.addSubview(progressView)
        
        // Create a button to update the progress
        let updateButton = UIButton(type: .system)
        updateButton.setTitle("Update Progress", for: .normal)
        updateButton.addTarget(self, action: #selector(updateProgress), for: .touchUpInside)
        updateButton.frame = CGRect(x: 50, y: 350, width: 200, height: 50)
        view.addSubview(updateButton)
    }
    @objc func updateProgress() {
        // Update the progress value
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
          
            guard self.progress.isFinished == false else {
                timer.invalidate()
                return
            }
            self.progress.completedUnitCount += 1
            let progressFloat = Float(self.progress.fractionCompleted)
            self.progressView.setProgress(progressFloat, animated: true)
        }
    }
}
