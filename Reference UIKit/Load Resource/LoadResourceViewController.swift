//
//  LoadResourceViewController.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 12/25/20.
//

import UIKit

class LoadResourceViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let path = Bundle.main.bundlePath
        if let pathsOfContents = try? FileManager.default.contentsOfDirectory(atPath: path){
            for contentPath in pathsOfContents {
                if contentPath.hasPrefix("nssl"){
                    imageView.image = UIImage(named: contentPath)
                }
            }
        }
        
        if let urlToContents = try? Bundle.main.url(forResource: "mydocument", withExtension: "txt"){
            if let stringContent = try? String(contentsOf: urlToContents){
                print(stringContent)
            }
            
            if let dataContent = try? Data(contentsOf: urlToContents){
                print(dataContent)
            }
        }
    }

}
