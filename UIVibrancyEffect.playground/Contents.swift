

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageView = UIImageView(image: UIImage(systemName: "heart.fill"))
        imageView.frame = view.bounds
        imageView.contentMode = .scaleToFill
        view.addSubview(imageView)

        let blurEffect = UIBlurEffect(style: .dark)
        let blurredEffectView = UIVisualEffectView(effect: blurEffect)
        blurredEffectView.frame = imageView.bounds
        view.addSubview(blurredEffectView)
        let segmentedControl = UISegmentedControl(items: ["First Item", "Second Item"])
        segmentedControl.sizeToFit()
        segmentedControl.center = view.center

        let vibrancyEffect = UIVibrancyEffect(blurEffect: blurEffect)
        let vibrancyEffectView = UIVisualEffectView(effect: vibrancyEffect)
        vibrancyEffectView.frame = imageView.bounds

        vibrancyEffectView.contentView.addSubview(segmentedControl)
        blurredEffectView.contentView.addSubview(vibrancyEffectView)
    }
}

