//
//  AppTabBarController.swift
//  SwiftProject
//
//  Created by 杜海龙 on 2017/12/25.
//  Copyright © 2017年 杜海龙. All rights reserved.
//

import UIKit

class AppTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        
        self.addVCS()
        self.clearTabBarLine()
    }
    
    
    func clearTabBarLine() {
        let rect = CGRect(x: 0,y: 0,width: 1,height: 0.1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(UIColor.orange.cgColor)
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.tabBar.shadowImage = image
        self.tabBar.backgroundImage = UIImage.init()
    }
    
    func addVCS() {

        let firstNV = FIRSTViewController.init()
        self.addchildVc(vc: firstNV, image: "fi", select_image: "fisel", title: "FIRST")
        
        let second = SECONDViewController.init()
        self.addchildVc(vc: second, image: "secondSel", select_image: "second", title: "SECOND")
        
        let thirod = THIRDViewController.init()
        self.addchildVc(vc: thirod, image: "th", select_image: "thsel", title: "THIRD")
        
        let four = FOURViewController.init()
        self.addchildVc(vc: four, image: "four", select_image: "foursel", title: "FOUR")
        
        
        self.tabBar.isTranslucent = false
        self.tabBar.tintColor = UIColor.init(red: 200/255, green: 95/255, blue: 60/255, alpha: 1)
        //self.tabBar.barTintColor = UIColor.yellow
        
    }
    
    
    func addchildVc(vc:UIViewController,image:NSString,select_image:NSString,title:NSString){
        vc.title = title as String;
        vc.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -2)
        vc.tabBarItem.image = UIImage.init(named: image as String)
        let tabbar2SelectedImage = UIImage(named: select_image as String)
        vc.tabBarItem.selectedImage = tabbar2SelectedImage!.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let NC = UINavigationController.init(rootViewController: vc)
        self.addChildViewController(NC)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
