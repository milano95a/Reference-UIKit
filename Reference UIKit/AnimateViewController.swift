//
//  AnimateViewController.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 12/28/20.
//

import UIKit

class AnimateViewController: UIViewController {
    
    var imageView: UIImageView!
    var button: UIButton!
    var currentAnimation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.center = view.center
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onTap(_:))))
        view.addSubview(imageView)
        
    }
    
    @objc func onTap(_ sender: Any) {
        
//        UIView.animate(
//            withDuration: 1,
//            animations: {
//                switch self.currentAnimation {
//                case 0:
//                    self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
//                case 1:
//                    self.imageView.transform = .identity
//                case 2:
//                    self.imageView.transform = CGAffineTransform(translationX: -100, y: -100)
//                case 3:
//                    self.imageView.transform = .identity
//                case 4:
//                    self.imageView.transform = CGAffineTransform(rotationAngle: .pi)
//                case 5:
//                    self.imageView.transform = .identity
//                case 6:
//                    self.imageView.alpha = 0.1
//                    self.imageView.backgroundColor = .green
//                case 7:
//                    self.imageView.alpha = 1
//                    self.imageView.backgroundColor = .clear
//                default:
//                    break
//                }
//            },
//            completion: { finished in
//                sender.isHidden = false
//            }
//        )
        
        UIView.animate(
            withDuration: 1,
            delay: 0,
            usingSpringWithDamping: 0.5,
            initialSpringVelocity: 5,
            options: [],
            animations: {
                switch self.currentAnimation {
                case 0:
                    self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
                case 1:
                    self.imageView.transform = .identity
                case 2:
                    self.imageView.transform = CGAffineTransform(translationX: -100, y: -100)
                case 3:
                    self.imageView.transform = .identity
                case 4:
                    self.imageView.transform = CGAffineTransform(rotationAngle: .pi)
                case 5:
                    self.imageView.transform = .identity
                case 6:
                    self.imageView.alpha = 0.1
//                    self.imageView.backgroundColor = .green
                case 7:
                    self.imageView.alpha = 1
                    self.imageView.backgroundColor = .clear
                default:
                    break
                }
            },
            completion: { finished in
                
            }
        )
        currentAnimation = (currentAnimation + 1) % 8
    }
}

