//
//  AlertViewController.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 12/23/20.
//

import UIKit

class AlertViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.onTap(_:))))
    }
    
    @objc func onTap(_ sender: UITapGestureRecognizer?){
        let alert = UIAlertController(title: "Modify Title", message: "Type in new title", preferredStyle: .alert)

        alert.addTextField()
        
        alert.addAction(UIAlertAction(title: "Change Title", style: .default, handler: {_ in
            self.title = alert.textFields?[0].text
        }))

        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            
        }))

        present(alert, animated: true)
        
    }

}
