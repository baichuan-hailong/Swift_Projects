//
//  FirstTableViewCell.swift
//  SwiftProject
//
//  Created by 杜海龙 on 2017/12/26.
//  Copyright © 2017年 杜海龙. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {
    
    var tipImageView:UIImageView!
    var tipLabel:UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.tipImageView = UIImageView.init(frame: CGRect.init(x: 20, y: 10, width: 44, height: 44));
        self.tipImageView.image = UIImage.init(named: "first_demo")
        self.tipImageView.contentMode = UIViewContentMode.scaleAspectFit
        self.contentView.addSubview(self.tipImageView)
        
        self.tipLabel = UILabel.init(frame: CGRect.init(x: 100, y: 10, width: kScreenWidth-150, height: 44))
        self.tipLabel.font = UIFont.init(name: "", size: 18)
        self.tipLabel.textColor = UIColor.gray
        self.tipLabel.text      = "---";
        self.contentView.addSubview(self.tipLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setImageNane(imageName:NSString,title:NSString) {
        self.tipImageView.image = UIImage.init(named: imageName as String)
        self.tipLabel.text      = title as String;
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
