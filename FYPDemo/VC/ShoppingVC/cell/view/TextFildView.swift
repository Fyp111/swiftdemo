//
//  TextFildView.swift
//  FYPDemo
//
//  Created by fyp on 2019/6/16.
//  Copyright © 2019 fyp. All rights reserved.
//

import UIKit

class TextFildView: UIView {
    var field:UITextField?
    var lineLeft:UIView?
    var lineRight:UIView?
    var addBtn:UIButton?
    var reductionBtn:UIButton?
    
    
    override init(frame:CGRect){
        super.init(frame: frame)
        setupSubViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupSubViews() {
       
        addBtn = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 30))
        addBtn?.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        addBtn?.setTitle("+", for: .normal)
        addBtn?.addTarget(self, action: #selector(addClick(button:)), for: .touchUpInside)
        addBtn?.setTitleColor(UIColor.white, for: .normal)
    
        //uiTextField
        field = UITextField(frame:CGRect(x:41,y:0,width:80,height:30))
        field?.text = "1"
        field?.isEnabled = false
        field?.textAlignment = NSTextAlignment.center
        field?.textColor = UIColor.white
        field?.font = UIFont.systemFont(ofSize: 15)
        
        reductionBtn = UIButton(frame: CGRect(x: 121, y: 0, width: 40, height: 30))
        reductionBtn?.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        reductionBtn?.setTitle("-", for: .normal)
        reductionBtn?.addTarget(self, action: #selector(reductionClick(button:)), for: .touchUpInside)
        reductionBtn?.setTitleColor(UIColor.white, for: .normal)
        
        
        lineLeft = UILabel(frame: CGRect(x:40,y:0 ,width:1,height:30))
        lineLeft?.backgroundColor = UIColor.gray
        
        lineRight = UILabel(frame: CGRect(x:120,y:0 ,width:1,height:30))
        lineRight?.backgroundColor = UIColor.gray

        self.addSubview(addBtn!)
        self.addSubview(field!)
        self.addSubview(reductionBtn!)
        self.addSubview(lineLeft!)
        self.addSubview(lineRight!)
    }
    
    @objc func addClick(button:UIButton) -> Void {
        
        guard let num1 = Int(field?.text ?? ""),let num2 = Int("1") else{
            return
        }
        field?.text = "\(num1+num2)"
    }
    
    @objc func reductionClick(button:UIButton) -> Void {
        guard let num1 = Int(field?.text ?? ""),let num2 = Int("1") else{
            return
        }
        if (Int(field?.text ?? "")! > 0) {
            field?.text = "\(num1-num2)"
            }else{
            return
        }
        
    }
}
