//
//  BaseNavController.swift
//  FYPDemo
//
//  Created by fyp on 2019/3/5.
//  Copyright © 2019 fyp. All rights reserved.
//

import UIKit

class BaseNavController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationBar.tintColor = UIColor.white;
//        self.navigationBar.barTintColor = UIColor.black;
    }
    

    override func pushViewController(_ viewController:UIViewController, animated:Bool) {
        if(self.viewControllers.count >= 1 ){
            self.viewControllers[self.viewControllers.count - 1].hidesBottomBarWhenPushed = true;
        }
        
       
        
        super.pushViewController(viewController, animated: animated);
        
        
        if (self.viewControllers.count == 2) {
            self.viewControllers[0].hidesBottomBarWhenPushed = false;
        }
        
    }

}
