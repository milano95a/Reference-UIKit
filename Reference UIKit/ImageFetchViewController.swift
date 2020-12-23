//
//  ImageFetchViewController.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 12/23/20.
//

import UIKit

class ImageFetchViewController: UIViewController {
    
    let urlString = "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Khudayar_Khan_Palace%2C_Kokand_01.JPG/640px-Khudayar_Khan_Palace%2C_Kokand_01.JPG"

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.global(qos: .userInitiated).async {
            if let url = URL(string: self.urlString){
                if let data = try? Data(contentsOf: url){
                    if let image = UIImage(data: data){
                        DispatchQueue.main.async {
                            self.imageView.image = image
                        }
                    }
                }
            }
        }
    }
    
}
