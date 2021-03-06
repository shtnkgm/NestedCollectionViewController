//
//  UIView+Extension.swift
//  NestedCollectionViewController
//
//  Created by Shota Nakagami on 2017/11/21.
//  Copyright © 2017年 Shota Nakagami. All rights reserved.
//

import UIKit

extension UIView {
    /// AutoLayoutで同サイズにしたViewを追加する
    func overlay(on view: UIView) {
        view.addSubview(self)
        
        // 制約の追加
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    }
}

