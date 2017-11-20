//
//  ParentViewController.swift
//  NestedCollectionViewController
//
//  Created by Shota Nakagami on 2017/11/20.
//  Copyright © 2017年 Shota Nakagami. All rights reserved.
//

import UIKit

final class ParentViewController: UIViewController {

    @IBOutlet private weak var collectionView: UICollectionView!
    
    private let margin: CGFloat = 10
    
    private var reuseIdentifier: String {
        return String(describing: ParentCell.self)
    }
    
    private var collectionViewFlowLayout: UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = margin
        layout.minimumInteritemSpacing = margin
        layout.itemSize = CGSize(width: view.bounds.width - margin * 2, height: 100)
        layout.sectionInset = UIEdgeInsets(top: margin, left: margin, bottom: margin, right: margin)
        layout.scrollDirection = .vertical
        return layout
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }
    
    private func setupCollectionView() {
        let nib = UINib(nibName: reuseIdentifier, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView.dataSource = self
        collectionView.collectionViewLayout = collectionViewFlowLayout
        collectionView.contentInsetAdjustmentBehavior = .never
    }
    
    private func createChildViewController() -> ChildViewController? {
        let className = String(describing: ChildViewController.self)
        let storyboard = UIStoryboard(name: className, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: className) as? ChildViewController
    }
}

extension ParentViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        guard let parentCell = cell as? ParentCell,
            let childViewController = createChildViewController() else { return cell }
        
        childViewController.number = indexPath.row
        addChildViewController(childViewController)
        childViewController.view.overlay(on: cell)
        didMove(toParentViewController: childViewController)
        return parentCell
    }
}
