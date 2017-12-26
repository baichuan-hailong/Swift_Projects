//
//  FirstDetailViewController.swift
//  SwiftProject
//
//  Created by 杜海龙 on 2017/12/26.
//  Copyright © 2017年 杜海龙. All rights reserved.
//

import UIKit

class FirstDetailViewController: AppViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "First Detail"
        
        self.addLeft()
    }
    
    func addLeft() {
        let leftBtn = UIButton.init()
        leftBtn.frame = CGRect.init(x: 0, y: 0, width: 44, height: 64)
        //leftBtn.backgroundColor = UIColor.yellow
        leftBtn.imageEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 10)
        leftBtn.setImage(UIImage.init(named: "back"), for: UIControlState.normal)
        leftBtn.addTarget(self, action: #selector(self.goBack(sender:)), for: UIControlEvents.touchUpInside)
        let item = UIBarButtonItem.init(customView: leftBtn)
        self.navigationItem.leftBarButtonItem=item;
    }
    
    @objc func goBack(sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
