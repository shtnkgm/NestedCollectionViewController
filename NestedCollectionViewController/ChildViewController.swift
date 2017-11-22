//
//  ChildViewController.swift
//  NestedCollectionViewController
//
//  Created by Shota Nakagami on 2017/11/20.
//  Copyright © 2017年 Shota Nakagami. All rights reserved.
//

import UIKit

final class ChildViewController: LifecycleLoggingViewController {
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
    var parentIndex: Int = 0
    
    private let margin: CGFloat = 10
    
    private var reuseIdentifier: String {
        return String(describing: ChildCell.self)
    }
    
    private var collectionViewFlowLayout: UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = margin
        layout.minimumInteritemSpacing = margin
        layout.itemSize = CGSize(width: 100 - margin * 2, height: 100 - margin * 2)
        layout.sectionInset = UIEdgeInsets(top: margin, left: margin, bottom: margin, right: margin)
        layout.scrollDirection = .horizontal
        layout.invalidateLayout()
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
        collectionView.delegate = self
        collectionView.collectionViewLayout = collectionViewFlowLayout
        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.contentInset = .zero
    }
}

extension ChildViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        guard let childCell = cell as? ChildCell else { return cell }
        childCell.configure(parentIndex: parentIndex, childIndex: indexPath.row)
        return childCell
    }
}

extension ChildViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(className + ":" + #function + "(\(indexPath.row))")
    }
}
