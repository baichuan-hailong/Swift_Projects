//
//  FOURViewController.swift
//  SwiftProject
//
//  Created by 杜海龙 on 2017/12/25.
//  Copyright © 2017年 杜海龙. All rights reserved.
//

import UIKit

class FOURViewController: UIViewController {

    var fourView:FOURView!
    
    override func loadView() {
        self.fourView = FOURView.init(frame: kScreenBound)
        self.view = self.fourView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard;
        //write
        defaults.set("衣带渐宽终不悔", forKey: "name");
        defaults.synchronize();
        //read
        let name = defaults.string(forKey: "name")
        let switch_bool = defaults.bool(forKey: "bool")
        print(name!)
        print(switch_bool)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
