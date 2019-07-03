//
//  CollectionViewTableVIewCell.swift
//  FYPDemo
//
//  Created by fyp on 2019/6/8.
//  Copyright © 2019 fyp. All rights reserved.
//

import UIKit

protocol CollectionViewTableVIewCellDelegate: NSObjectProtocol{
    
    func didSelected(index:IndexPath)
    
}

class CollectionViewTableVIewCell: SmartTableViewCell {

    weak var delegate: CollectionViewTableVIewCellDelegate?
    
    var model:Array<Any>!
    
    var collectionV: UICollectionView!
    
////// TODO:

    override init(style: CollectionViewTableVIewCell.CellStyle, reuseIdentifier: String?) {

        super.init(style: style, reuseIdentifier: reuseIdentifier)

        initUI()
    }
    
    //MARK: initUI
    func initUI() {
      
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 100*scaleW, height: 140*scaleH)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.scrollDirection = .horizontal
        
        collectionV = UICollectionView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 160*scaleH), collectionViewLayout: layout)
        collectionV.delegate = self
        collectionV.dataSource = self
        collectionV.backgroundColor = .clear
        collectionV.showsHorizontalScrollIndicator = false
        collectionV.register(PushCollectionViewCell.self, forCellWithReuseIdentifier:"PushCollectionViewCell")
        self.contentView.addSubview(collectionV!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CollectionViewTableVIewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.model.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if let delegateOK = self.delegate{
            
            delegateOK.didSelected(index: indexPath)
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PushCollectionViewCell", for: indexPath) as! PushCollectionViewCell
        cell.model = self.model?[indexPath.item] as? Dictionary<String, String>
        return cell
    }
    
}
