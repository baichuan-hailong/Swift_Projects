//
//  FOURView.swift
//  SwiftProject
//
//  Created by 杜海龙 on 2017/12/26.
//  Copyright © 2017年 杜海龙. All rights reserved.
//

import UIKit

class FOURView: UIScrollView {

    var girlImageView:UIImageView!
    var girlBlackImageView:UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addUI()
        
    }
    
    
    func addUI() {
        self.girlImageView = UIImageView.init(frame: CGRect.init(x: (kScreenWidth-64)/2, y: 10, width: 64, height: 64))
        self.girlImageView.image = UIImage.init(named: "girl_red")
        self.addSubview(self.girlImageView)
        
        self.girlBlackImageView = UIImageView.init(frame: CGRect.init(x: (kScreenWidth-64)/2, y: 160, width: 64, height: 64))
        self.girlBlackImageView.image = UIImage.init(named: "girl")
        self.addSubview(self.girlBlackImageView)
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
}
