//
//  ChildViewController.swift
//  NestedCollectionViewController
//
//  Created by Shota Nakagami on 2017/11/20.
//  Copyright © 2017年 Shota Nakagami. All rights reserved.
//

import UIKit

final class ChildViewController: UIViewController {
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
    var number: Int = 0
    
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
}

extension ChildViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        guard let childCell = cell as? ChildCell else { return cell }
        childCell.configure(number: number, index: indexPath.row)
        return childCell
    }
}
