//
//  DetailViewController.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 12/22/20.
//

import UIKit

class DetailViewController: UIViewController {
    
    //    MARK: - Properties
    
    var data: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = data
    }
}
