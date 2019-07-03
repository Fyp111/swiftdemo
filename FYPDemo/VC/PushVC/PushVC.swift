//
//  PushVC.swift
//  FYPDemo
//
//  Created by fyp on 2019/6/8.
//  Copyright © 2019 fyp. All rights reserved.
//

import UIKit

class PushVC: BaseViewController ,CollectionViewTableVIewCellDelegate{
    func didSelected(index: IndexPath) {
        print("点击了第" + String(index.item) + "个")
    }
    

    var dataArray:[[String:String]] = [["title":"嘻嘻","icon":"icon"],["title":"哈哈","icon":"icon"],["title":"溜溜","icon":"icon"],["title":"锁的","icon":"icon"],["title":"发我","icon":"icon"],["title":" 出的","icon":"icon"],["title":"相册","icon":"icon"],["title":"好","icon":"icon"],["title":"他","icon":"icon"]]
    
    //MARK: CIRCLELIFE
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
extension PushVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = CollectionViewTableVIewCell.cellForTableView(tableView: tableView) as? CollectionViewTableVIewCell
        cell?.model = self.dataArray
        cell?.delegate = self;
        return cell!
    }
}
