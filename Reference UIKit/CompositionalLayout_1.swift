//
//  CollectionViewController1.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 12/30/20.
//

import UIKit

class CompositionalLayout_1: UICollectionViewController {

    private let cellId = "cellId"
    
    init(){
//        let layout = UICollectionViewFlowLayout()
        
//        let layout = UICollectionViewCompositionalLayout { (sectionNumber, env) -> NSCollectionLayoutSection in
//            let item = NSCollectionLayoutItem(
//                layoutSize: .init(
//                    widthDimension: .fractionalWidth(1),
//                    heightDimension: .fractionalWidth(1)
//                )
//            )
//            item.contentInsets.trailing = 16
//            item.contentInsets.leading = 16
//
//            let group = NSCollectionLayoutGroup.horizontal(
//                layoutSize: .init(
//                    widthDimension: .fractionalWidth(1),
//                    heightDimension: .absolute(200)),
//                subitems: [item]
//            )
//
//            let section = NSCollectionLayoutSection(group: group)
//            section.orthogonalScrollingBehavior = .groupPagingCentered
//
//            return section
//        }
        super.init(collectionViewLayout: CompositionalLayout_1.createLayout())
    }
    
    static func createLayout() -> UICollectionViewCompositionalLayout {
        let layout = UICollectionViewCompositionalLayout { (sectionNumber, env) -> NSCollectionLayoutSection in
            return CompositionalLayout_1.createSection()
        }
        
        return layout
    }
    
    static func createSection() -> NSCollectionLayoutSection {
        let section = NSCollectionLayoutSection(group: CompositionalLayout_1.createGroup())
        section.orthogonalScrollingBehavior = .groupPagingCentered
        return section
    }
    
    static func createGroup()  -> NSCollectionLayoutGroup{
        let group = NSCollectionLayoutGroup.horizontal(
            layoutSize: .init(
                widthDimension: .fractionalWidth(1),
                heightDimension: .absolute(200)),
            subitems: [CompositionalLayout_1.createItem()]
        )
        
        return group
    }
    
    static func createItem() -> NSCollectionLayoutItem {
        let item = NSCollectionLayoutItem(
            layoutSize: .init(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalWidth(1)
            )
        )
        item.contentInsets.trailing = 16
        item.contentInsets.leading = 16
        item.contentInsets.bottom = 16
        
        return item
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        title = "Compositional Layout"
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int { return 5 }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
    
        cell.backgroundColor = UIColor.random()
    
        return cell
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}




extension UIColor {
    static func random() -> UIColor {
        let colors = [UIColor.red, .green, .orange, .yellow, .blue]
        return colors.randomElement()!
    }
}
