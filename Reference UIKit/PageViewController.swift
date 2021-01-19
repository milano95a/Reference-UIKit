//
//  PageViewController.swift
//  Reference UIKit
//
//  Created by Abdurakhmon Jamoliddinov on 1/8/21.
//

import UIKit

class PageViewController: UIPageViewController,
                          UIPageViewControllerDataSource,
                          UIPageViewControllerDelegate {
    
    lazy var pages: [UIViewController] = {
        return []
    }()
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let currentIndex = pages.firstIndex(of: viewController)!
        return pages[abs((currentIndex - 1) % pages.count)]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let currentIndex = pages.firstIndex(of: viewController)!
        return pages[(currentIndex + 1) % 3]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let vc1 = UIViewController()
        vc1.view.backgroundColor = .red
        pages.append(vc1)
        
        let vc2 = UIViewController()
        vc2.view.backgroundColor = .green
        pages.append(vc2)
        
        let vc3 = UIViewController()
        vc3.view.backgroundColor = .blue
        pages.append(vc3)
        
        self.delegate = self
        self.dataSource = self
        
        setViewControllers([pages[0]], direction: .forward, animated: false)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
    }
}
