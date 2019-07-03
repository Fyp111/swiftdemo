//
//  HomeTableViewCell.swift
//  FYPDemo
//
//  Created by fyp on 2019/3/6.
//  Copyright © 2019 fyp. All rights reserved.
//

import UIKit

class HomeTableViewCell: SmartTableViewCell {

    var model:Dictionary<String, String>?
    var TitleLabel:UILabel?
    var iconImageView:UIImageView?
    var line:UIView?
    
    override init(style: HomeTableViewCell.CellStyle, reuseIdentifier: String?) {

        super.init(style: style, reuseIdentifier: reuseIdentifier)

      
        initUI()
        setUpviews()
    }
    
    
    func initUI() {
        self.iconImageView = UIImageView(frame: CGRect(x: 20*scaleW, y: 20*scaleH, width: 50*scaleH, height: 50*scaleH))
        self.iconImageView?.layer.cornerRadius = 5;
        self.iconImageView?.layer.masksToBounds = true
        self.contentView.addSubview(self.iconImageView!)
        
        self.TitleLabel = UILabel(frame: CGRect(x: 20*scaleW, y: 80*scaleH, width: screenWidth-20*scaleW, height: 20*scaleH))
        self.contentView.addSubview(self.TitleLabel!)
        
        self.line = UIView(frame: CGRect(x: 10*scaleW, y: 110*scaleH-1, width: screenWidth-20*scaleW, height: 1))
        self.line?.backgroundColor = UIColor.black
        self.contentView.addSubview(self.line!)

    }

    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setUpviews() {
        
        if self.model != nil {
            self.iconImageView?.image=UIImage(named: self.model?["icon"] ?? "")
            self.TitleLabel?.text = self.model?["title"]
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setUpviews()
    }

}
