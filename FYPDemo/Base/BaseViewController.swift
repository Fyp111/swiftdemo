//
//  BaseViewController.swift
//  FYPDemo
//
//  Created by fyp on 2019/3/5.
//  Copyright © 2019 fyp. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let backItem = UIBarButtonItem.init()
        backItem.title = ""
        backItem.tintColor = UIColor.black
        self.navigationItem.backBarButtonItem = backItem
    }

}
