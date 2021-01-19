//
//  ImagePickerViewController.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 12/26/20.
//

import UIKit

class ImagePickerViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var button: UIButton!
    var picker : UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onTap(_:))))
        picker = UIImagePickerController()
        picker.delegate = self
    }

    @objc func onTap(_ sender: UITapGestureRecognizer){
        present(picker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage {
            imageView.image = image
        }
        picker.dismiss(animated: true)
    }
}
