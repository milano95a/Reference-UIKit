//
//  ViewController.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 12/21/20.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBAction func onTap(_ sender: UIButton) {
        let vc = CompositionalLayout_1()
        navigationController?.pushViewController(vc, animated: true)
    }
}

