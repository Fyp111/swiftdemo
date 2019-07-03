//
//  BaseTabbarController.swift
//  FYPDemo
//
//  Created by fyp on 2019/3/5.
//  Copyright © 2019 fyp. All rights reserved.
//

import UIKit

class BaseTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBar.tintColor = UIColor.red;
        
        customView();
    }
    

    private func customView() {
        creatNavController(VC: HomeViewController(), title: "首页", imageName: "home")
        creatNavController(VC: ShoppingViewController(), title: "购物车", imageName: "shop")
        creatNavController(VC: MineViewController(), title: "我的", imageName: "mine")
    }
    
    private func creatNavController(VC: UIViewController, title: String, imageName: String) {
        
        VC.title = title
        VC.tabBarItem.image = UIImage(named: imageName)
        VC.tabBarItem.selectedImage = UIImage(named: imageName + ("_select"))
        addChild(BaseNavController(rootViewController: VC))
        
    }

}
