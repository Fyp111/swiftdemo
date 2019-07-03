//
//  SmartTableViewCell.swift
//  FYPDemo
//
//  Created by fyp on 2019/3/6.
//  Copyright © 2019 fyp. All rights reserved.
//

import UIKit

class SmartTableViewCell: UITableViewCell {
    
    
    var cellID = String()
    
//    let cellID = cellIdentifier() as String;
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
        cellID = SmartTableViewCell.cellIdentifier() as String
        super.init(style: style, reuseIdentifier: cellID)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    static func cellForTableView(tableView:UITableView )->Any{
        
        let cellID = cellIdentifier() as String;
        
        var cell:UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: cellID)
        if cell == nil {
            
            cell = self.init()

        }
        
        cell?.selectionStyle = .none
        return cell
    }
    
    static func cellIdentifier()->NSString{

        let className = NSStringFromClass(self)
        return className as NSString
    }
    
    
//   static func initWithCellIdentifier(cellID:NSString) -> Any {
//    return SmartTableViewCell.init(style: .default, reuseIdentifier: cellID as String)
//    }
}
