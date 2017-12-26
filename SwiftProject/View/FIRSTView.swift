//
//  FIRSTView.swift
//  SwiftProject
//
//  Created by 杜海龙 on 2017/12/26.
//  Copyright © 2017年 杜海龙. All rights reserved.
//

import UIKit

class FIRSTView: AppView {
    var firstTableView:UITableView!
    let cellIdentity = "cellIdentity"
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addTableView()
    }
    
    
    func addTableView() {
        firstTableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight-49), style: UITableViewStyle.grouped)
        firstTableView.separatorStyle = UITableViewCellSeparatorStyle.none
        //firstTableView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0)
        firstTableView.showsVerticalScrollIndicator = false
        firstTableView.register(FirstTableViewCell.self, forCellReuseIdentifier: cellIdentity)
        //firstTableView.backgroundColor = UIColor.red
        self.addSubview(firstTableView)
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
}
