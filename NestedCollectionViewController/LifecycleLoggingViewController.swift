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
    
    private func log(methodName: String = #function) {
        print(className + ":" + methodName)
    }
    
    override func viewDidLoad() {
        log()
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        log()
        super.viewDidLayoutSubviews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        log()
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        log()
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        log()
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        log()
        super.viewDidDisappear(animated)
    }
    
    override func willMove(toParentViewController parent: UIViewController?) {
        log()
        super.willMove(toParentViewController: parent)
    }
    
    override func didMove(toParentViewController parent: UIViewController?) {
        log()
        super.didMove(toParentViewController: parent)
    }
}
