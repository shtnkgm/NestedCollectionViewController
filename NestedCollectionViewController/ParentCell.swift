//
//  ParentCell.swift
//  NestedCollectionViewController
//
//  Created by Shota Nakagami on 2017/11/20.
//  Copyright © 2017年 Shota Nakagami. All rights reserved.
//

import UIKit

class ParentCell: UICollectionViewCell {
    var childViewController: ChildViewController?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(parentViewController: UIViewController, index: Int) {
        // セルが再利用されている場合は、子ViewControllerを取り除く
        if childViewController != nil {
            childViewController?.willMove(toParentViewController: nil)
            childViewController?.view.removeFromSuperview()
            childViewController?.removeFromParentViewController()
        }
        
        if let childViewController = createChildViewController() {
            self.childViewController = childViewController
            childViewController.parentIndex = index
            parentViewController.addChildViewController(childViewController)
            childViewController.view.overlay(on: self)
            parentViewController.didMove(toParentViewController: childViewController)
        }
    }
    
    private func createChildViewController() -> ChildViewController? {
        let className = String(describing: ChildViewController.self)
        let storyboard = UIStoryboard(name: className, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: className) as? ChildViewController
    }
}
