//
//  SimpleCollectionViewCell.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 12/23/20.
//

import UIKit

class SimpleCollectionViewCell: UICollectionViewCell {
    
    var color: UIColor? {
        didSet {
            self.contentView.backgroundColor = color
            setNeedsDisplay()
        }
    }
    
    var letter: String? {
        didSet {
            label.text = letter
        }
    }
    
    @IBOutlet weak var label: UILabel!
}
