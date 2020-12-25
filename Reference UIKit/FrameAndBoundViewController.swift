//
//  FrameAndBoundViewController.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 12/24/20.
//

import UIKit

class FrameAndBoundViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var contentView: UIImageView!
    @IBOutlet weak var contentView2: UIImageView!
    
    @IBOutlet weak var frameXLabel: UILabel!
    @IBAction func frameX(_ sender: UISlider) {
        containerView.frame.origin.x = CGFloat(sender.value)
        frameXLabel.text = "Frame x origin = \(Int(sender.value))"
    }
    
    @IBOutlet weak var boundsXLabel: UILabel!
    @IBAction func boundsX(_ sender: UISlider) {
        containerView.bounds.origin.x = CGFloat(sender.value)
        boundsXLabel.text = "Bounds x origin = \(Int(sender.value))"
    }
    
    @IBOutlet weak var frameYLabel: UILabel!
    @IBAction func frameY(_ sender: UISlider) {
        containerView.frame.origin.y = CGFloat(sender.value)
        frameYLabel.text = "Frame y origin = \(Int(sender.value))"
    }
    
    @IBOutlet weak var boundsYLabel: UILabel!
    @IBAction func boundsY(_ sender: UISlider) {
        containerView.bounds.origin.y = CGFloat(sender.value)
        boundsYLabel.text = "Bounds y origin = \(Int(sender.value))"
    }
    
    @IBOutlet weak var frameX: UISlider!
    @IBOutlet weak var frameY: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        frameX.value = 50
        frameY.value = 150
        containerView.bounds.origin.x = 0
        containerView.bounds.origin.y = 0
        containerView.frame.origin.x = 50
        containerView.frame.origin.y = 150
        
        
        if let img = UIImage(named: "img"){
            contentView.frame.size = img.size
            contentView.image = img
        }
    }
}
