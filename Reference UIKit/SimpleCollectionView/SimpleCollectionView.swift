//
//  CollectionViewController.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 12/23/20.
//

import UIKit

private let reuseIdentifier = "MyCell"

class SimpleCollectionView: UICollectionViewController {

    let colors = [UIColor.blue, .brown, .cyan, .yellow, .red, .purple, .green, .magenta, .orange]
    let letters = ["A", "B", "D", "U", "R", "A", "K", "H", "M", "A", "N"]
    
    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 200
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! SimpleCollectionViewCell
    
        // Configure the cell        
        cell.letter = letters.randomElement()
        cell.color = colors.randomElement()
        
        return cell
    }

}
