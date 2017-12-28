//
//  FirstDetailViewController.swift
//  SwiftProject
//
//  Created by 杜海龙 on 2017/12/26.
//  Copyright © 2017年 杜海龙. All rights reserved.
//

import UIKit
import Alamofire

class FirstDetailViewController: AppViewController,HLShareViewDelegate {

    var firstDetailView = FIRSTDetailView.init(frame: kScreenBound)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "First Detail"
        
        self.addLeft()
        self.view = firstDetailView
        firstDetailView.shareBtn.addTarget(self,
                                           action: #selector(self.shareBtnClick(sender:)),
                                           for: UIControlEvents.touchUpInside)
        
        AlamofireManager.init().test1()
        self.test1()
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
    
    
    @objc func shareBtnClick(sender:UIButton) {
        print("share")
        let shareView = ShareView.init(frame: CGRect.init(x: 0, y: 0, width: kScreenWidth, height: kScreenHeight))
        shareView.delegate = self
        shareView.shareShow()
    }
    
    func shareViewDicSelectButWithTag(view: UIView, btnTag: NSInteger) {
        print(btnTag)
        
        self.myAlert(index: btnTag)
    }
    
    
    func myAlert(index:NSInteger) {
        
        let alertController = UIAlertController(title: "提示",
                                                message: "Click"+String(index),
                                                preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "好的", style: .default, handler: {
            action in
            print("点击了确定")
        })
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    func test1() {
        //参数1：请求方式
        //参数2：请求路径
        //参数3：参数列表
        //参数4：编码方式(参数拼接方式)
        //参数5：需要设置的请求头的的信息
        
        Alamofire.request("http://192.168.199.14:9080/mjyg-purchase-web-client-mobile/app/market/listBy",
                          method: HTTPMethod.get,
                          parameters: nil,
                          encoding: JSONEncoding.default,
                          headers: nil).responseJSON { (response) in
                            
                            print(response)
                            //是否请求成功
                            if let jsonValue = response.result.value {
                                print(jsonValue)
                            }
        }
    }
        

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
