//
//  ShoppingViewController.swift
//  FYPDemo
//
//  Created by fyp on 2019/6/16.
//  Copyright © 2019 fyp. All rights reserved.
//

import UIKit

class ShoppingViewController: BaseViewController {
    
    func didSelected(index: IndexPath) {
        print("点击了第" + String(index.item) + "个")
    }
    
    
    var dataArray:[[String:String]] = [["title":"嘻嘻","icon":"icon"],["title":"哈哈","icon":"icon"],["title":"溜溜","icon":"icon"],["title":"锁的","icon":"icon"],["title":"发我","icon":"icon"],["title":" 出的","icon":"icon"],["title":"相册","icon":"icon"],["title":"好","icon":"icon"],["title":"他","icon":"icon"]]
    
    //MARK: CIRCLELIFE
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let path = Bundle.main.path(forResource: "shop", ofType: "json")
//
//        let data = try? Data(contentsOf: URL(fileURLWithPath: path!), options: Data.ReadingOptions.alwaysMapped)
//
//
//        let jsonArr = try! JSONSerialization.jsonObject(with:data!,options:JSONSerialization.ReadingOptions.mutableContainers) as! [[String: Any]]
//        for json in jsonArr {
//            let code1=(json["code"])as! Int
//            if (code1==0){
//
//                //userList提取后code2为NSArray的数组类型
//                let code2:NSArray=(json["dataList"])as! NSArray
//                dataArray = code2 as! [[String : String]]
//                //code3一个NSDictionary类型
////                let code3:NSDictionary=(code2[0])as! NSDictionary//index为在code2中第index个
////                (code3["id"])as! String  //这个输出为“0c870834932347bb”
//            }
//        }
     
//
//
//        guard  let dic =  try? JSONDecoder().decode([ShoppingModel].self, from: data!) else {
//            print()
//            return
//        }
//
//        print("dic =\(dic)")
        
//        let url = URL(fileURLWithPath: path!)
        // 带throws的方法需要抛异常
//        do {
//            /*
//             * try 和 try! 的区别
//             * try 发生异常会跳到catch代码中
//             * try! 发生异常程序会直接crash
//             */
////            let data = try Data(contentsOf: url)
////            let jsonData:Any = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers)
////            let jsonDic = jsonData as! NSDictionary
////            print(jsonData,"----",jsonDic)
//
//
//
//
//
//
//            do {
//                let shop = try JSONDecoder().decode(ShoppingModel.self, from: data)
//                print("shop:", shop)
//            } catch {
//                print(error.localizedDescription)
//            }
//
//        } catch let error as Error? {
//            print("读取本地数据出现错误!",error as Any)
//        }

        
        self.view .addSubview(self.tableV)
    }
    
    //MARK: initUI
    
    private lazy var tableV: UITableView = {
        
        let tableV = UITableView(frame: CGRect(x: 0, y: CGFloat(STATUS_BAR_HEIGHT), width: screenWidth, height: screenHeight), style: .plain)
        tableV.delegate = self
        tableV.dataSource = self
        tableV.rowHeight = 160*scaleH;
        tableV.separatorStyle = .none
        tableV.showsVerticalScrollIndicator = false;
        return tableV
    }()
}

//MARK: DELEGATE
extension ShoppingViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = ShoppingTableViewCell.cellForTableView(tableView: tableView) as? ShoppingTableViewCell
        cell?.model = self.dataArray[indexPath.row]
//        cell?.delegate = self;
        return cell!
    }
}


