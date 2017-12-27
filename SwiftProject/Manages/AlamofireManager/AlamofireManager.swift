//
//  AlamofireManager.swift
//  SwiftProject
//
//  Created by 杜海龙 on 2017/12/27.
//  Copyright © 2017年 杜海龙. All rights reserved.
//

import UIKit
import Alamofire

class AlamofireManager: NSObject {
    
    //override func viewDidLoad() {
        //super.viewDidLoad()
        //self.test1()
        //self.test2()
        //self.test0()
    //}
}


//MARK: - 方式1 带参
extension AlamofireManager{
    
    //GET
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
    
    
    
    //POST
    func test0(){
        Alamofire.request("",
                          method: HTTPMethod.post,
                          parameters:nil, encoding: JSONEncoding.default,
                          headers: nil).responseJSON { (response) in
                            
                            print(response)
                            //是否请求成功
                            if let jsonValue = response.result.value {
                                print(jsonValue)
                            }
        }
    }
    
    
}



/**

 //MARK: - 方式2 不带参
 extension AlamofireManager{
 
 }

 
 func test2(){
 //参数1：请求方式
 //参数2：请求地址
 Alamofire.request(.GET, "http://0.0.0.0:tuicool@api.tuicool.com/api/articles/hot.json").responseJSON(options: .MutableContainers) { (data) in
 print(data)
 }
 }
 **/


