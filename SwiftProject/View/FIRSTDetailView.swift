//
//  FIRSTDetailView.swift
//  SwiftProject
//
//  Created by 杜海龙 on 2017/12/28.
//  Copyright © 2017年 杜海龙. All rights reserved.
//

import UIKit

class FIRSTDetailView: AppView {

    var shareBtn:UIButton!

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        shareBtn = UIButton.init(frame: CGRect.init(x: (kScreenWidth-44)/2, y: 100, width: 44, height: 44))
        shareBtn.setImage(UIImage.init(named: "share"), for: UIControlState.normal)
        self.addSubview(shareBtn)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
