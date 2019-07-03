//
//  PushCollectionViewCell.swift
//  FYPDemo
//
//  Created by fyp on 2019/6/8.
//  Copyright © 2019 fyp. All rights reserved.
//

import UIKit

class PushCollectionViewCell: UICollectionViewCell {
    var model:Dictionary<String, String>?

    var TitleLabel:UILabel?
    var iconImageView:UIImageView?
    var button:UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.backgroundColor = UIColor.lightGray
        initUI()
        setUpviews()
    }
    
    //MARK: initUI
    func initUI() {
        
        self.iconImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.width))
        self.iconImageView?.layer.cornerRadius = 5;
        self.iconImageView?.layer.masksToBounds = true
        self.contentView.addSubview(self.iconImageView!)
        
        self.TitleLabel = UILabel(frame: CGRect(x: 0, y: self.frame.size.width+20, width: self.frame.size.width, height: 20))
        self.TitleLabel?.textAlignment = NSTextAlignment.center
        self.contentView.addSubview(self.TitleLabel!)
        
        self.button = UIButton(type:.custom)
        self.button?.frame = CGRect(x:(self.frame.size.width-30)/2, y:self.frame.size.width+50, width:30, height:20)
        self.button?.layer.cornerRadius = 5;
        self.button?.layer.borderColor = UIColor.white.cgColor
        self.button?.layer.borderWidth = 1
        self.button?.titleLabel?.font = UIFont.systemFont(ofSize: 9)
        self.button?.setTitle("详情", for: .normal)
        self.button?.backgroundColor = UIColor.black
        self.button?.setTitleColor(UIColor.white, for: .normal)
        self.button.addTarget(self, action: #selector(buttonClick(button:)), for: .touchUpInside)
        self.contentView.addSubview(self.button)
        
    }
    
    @objc func buttonClick(button:UIButton) -> Void {
        print("详情")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setUpviews()
    }
    
    func setUpviews() {
        
        if self.model != nil {
            self.iconImageView?.image = UIImage(named: self.model?["icon"] ?? "")
            self.TitleLabel?.text = self.model?["title"]
        }
    }
    
   
}
