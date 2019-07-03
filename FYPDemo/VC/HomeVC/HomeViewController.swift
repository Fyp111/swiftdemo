//
//  HomeViewController.swift
//  FYPDemo
//
//  Created by fyp on 2019/3/5.
//  Copyright © 2019 fyp. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    var dataArray:[[String:String]] = [["title":"嘻嘻","icon":"icon"],["title":"哈哈","icon":"icon"],["title":"哈哈","icon":"icon"],["title":"哈哈","icon":"icon"]]
    
    private lazy var tableV: UITableView = {

        let tableV = UITableView(frame: CGRect(x: 0, y: CGFloat(STATUS_BAR_HEIGHT), width: screenWidth, height: screenHeight - CGFloat(NAVIGATION_BAR_HEIGHT)), style: .plain)
        tableV.tableFooterView = UIView()
        return tableV

    }()
    
    fileprivate func creatUI() {
        self.tableV = UITableView(frame: CGRect(x: 0, y: CGFloat(STATUS_BAR_HEIGHT), width: screenWidth, height: screenHeight - CGFloat(NAVIGATION_BAR_HEIGHT)), style: .plain)
        self.tableV.delegate = self;
        self.tableV.dataSource = self
        self.tableV.rowHeight = 110*scaleH;
        self.tableV.separatorStyle = .none
        self.tableV.showsVerticalScrollIndicator = false;
        self.view.addSubview(self.tableV)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white;
        creatUI()
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataArray.count;
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = HomeTableViewCell.cellForTableView(tableView: tableView) as? HomeTableViewCell;
        cell?.model = self.dataArray[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pushVC = PushVC()
        pushVC.title = "push"
        self.navigationController!.pushViewController(pushVC, animated: true)
    }
}
