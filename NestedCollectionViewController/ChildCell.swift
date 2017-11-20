//
//  ChildCell.swift
//  NestedCollectionViewController
//
//  Created by Shota Nakagami on 2017/11/20.
//  Copyright © 2017年 Shota Nakagami. All rights reserved.
//

import UIKit

class ChildCell: UICollectionViewCell {

    @IBOutlet private weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configure(number: Int, index: Int) {
        label.text = "\(number)-\(index)"
    }
}
