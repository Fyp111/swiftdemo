
//
//  Const.swift
//  FYPDemo
//
//  Created by fyp on 2019/3/5.
//  Copyright © 2019 fyp. All rights reserved.
//

import UIKit

let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height

let scaleW = UIScreen.main.bounds.width/375
let scaleH = UIScreen.main.bounds.height/667

let commonColor = UIColor(red: 242.0 / 255.0, green: 242.0 / 255.0, blue: 242.0 / 255.0, alpha: 1)
let lineColor = UIColor(red: 218.0 / 255.0, green: 218.0 / 255.0, blue: 218.0  / 255.0, alpha: 1)
let blueColor = UIColor(red: 3.0 / 255.0, green: 115.0 / 255.0, blue: 255.0 / 255.0, alpha: 1)
let randomColor = UIColor(red: CGFloat(arc4random()%256)/255.0, green: CGFloat(arc4random()%256)/255.0, blue: CGFloat(arc4random()%256)/255.0, alpha: 1.0)
//let isIPhoneX = UIScreen.main.bounds.size.equalTo(CGSize (width: 375, height: 812))
//let navigationBarHeight:CGFloat = isIPhoneX ? 88 : 64
//let bottomToolBarHeight:CGFloat = isIPhoneX ? 80 : 49

//适配Iphone_X XR XS XSMax
let Is_Iphone = (UI_USER_INTERFACE_IDIOM() == .phone)

let Is_Iphone_X_XS_XR_XSMAX = (Is_Iphone &&  screenHeight >= 812)
// 状态栏高度
let STATUS_BAR_HEIGHT = Is_Iphone_X_XS_XR_XSMAX ? 44 : 20
// 导航栏高度
let NAVIGATION_BAR_HEIGHT  = Is_Iphone_X_XS_XR_XSMAX ? 88 : 64
// tabBar高度
let TAB_BAR_HEIGHT = Is_Iphone_X_XS_XR_XSMAX ? 49 + 34 : 49
// home indicator
let HOME_INDICATOR_HEIGHT = Is_Iphone_X_XS_XR_XSMAX ? 34 : 0
