//
//  UIColor+extension.swift
//  SwiftProject
//
//  Created by 杜海龙 on 2017/12/28.
//  Copyright © 2017年 杜海龙. All rights reserved.
//

import Foundation
extension UIColor {
    
    //十六进制转颜色
    public func colorWithHex(rgb:Int, alpha: CGFloat) -> UIColor {
        return UIColor(red: ((CGFloat)((rgb & 0xFF0000) >> 16))/255.0, green: ((CGFloat)((rgb & 0xFF00) >> 8))/255.0, blue: ((CGFloat)(rgb & 0xFF)) / 255.0, alpha: alpha)
    }
    
    // 红色
    class var Red: UIColor {
        return UIColor(red: 252/255.0, green: 106/255.0, blue: 125/255.0, alpha: 1.0)
    }
    
    // 灰色背景颜色
    class var Gray: UIColor {
        return UIColor(red: 242/255.0, green: 243/255.0, blue: 248/255.0, alpha: 1.0)
    }
}

