//
//  LifecycleLoggingViewController.swift
//  NestedCollectionViewController
//
//  Created by Shota Nakagami on 2017/11/21.
//  Copyright © 2017年 Shota Nakagami. All rights reserved.
//

import UIKit

class LifecycleLoggingViewController: UIViewController {
    var className: String {
        return NSStringFromClass(type(of:self)).components(separatedBy: ".")[1]
    }
    
    override func viewDidLoad() {
        print(className + ":" + #function)
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        print(className + ":" + #function)
        super.viewDidLayoutSubviews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(className + ":" + #function)
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(className + ":" + #function)
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(className + ":" + #function)
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(className + ":" + #function)
        super.viewDidDisappear(animated)
    }
    
    override func willMove(toParentViewController parent: UIViewController?) {
        print(className + ":" + #function)
        super.willMove(toParentViewController: parent)
    }
    
    override func didMove(toParentViewController parent: UIViewController?) {
        print(className + ":" + #function)
        super.didMove(toParentViewController: parent)
    }
}
