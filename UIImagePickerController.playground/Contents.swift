/*
 Media Source Selection: You can use UIImagePickerController to let users choose between capturing new photos or videos with the device's camera or selecting existing media from their photo library.
 Camera Integration: When using the camera, UIImagePickerController provides a user interface for capturing photos and videos. You can specify whether to allow capturing photos, videos, or both. You can also control the camera's flash and front/rear camera selection.
 Photo Library Integration: When accessing the photo library, UIImagePickerController presents a media picker interface where users can browse and select photos and videos from their device's photo albums.
 Editing: You can enable or disable editing of selected photos or videos. When editing is allowed, users can crop and make simple adjustments to photos before using them.
 Delegation: UIImagePickerController relies on a delegate pattern to communicate with your app. You set a delegate that conforms to the UIImagePickerControllerDelegate protocol to receive callbacks when media is selected or captured.
 Result Handling: You receive selected or captured media as a UIImage or a URL depending on whether it's an image or a video. You can then process, display, or save the media as needed.
 */

import UIKit


class MyViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
  
    private lazy var button: UIButton = {
        let temp = UIButton(configuration: .bordered())
        temp.titleLabel?.text = "Select image"
        temp.frame = .init(x: 100, y: 100, width: 50, height: 50)
        temp.addTarget(self, action: #selector(pickPhotoButtonTapped), for: .touchUpInside)
        return temp
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
    }
    
    @objc func pickPhotoButtonTapped() {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }
    
    // UIImagePickerControllerDelegate method to handle the selected image
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
      
        }
        picker.dismiss(animated: true, completion: nil)
    }
}
