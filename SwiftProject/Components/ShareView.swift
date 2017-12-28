//
//  ShareView.swift
//  SwiftProject
//
//  Created by 杜海龙 on 2017/12/28.
//  Copyright © 2017年 杜海龙. All rights reserved.
//

import UIKit

protocol HLShareViewDelegate{
    func shareViewDicSelectButWithTag(view:UIView,btnTag:NSInteger)
}



class ShareView: AppView {
    let screen_height = UIScreen.main.bounds.size.height
    let screen_width  = UIScreen.main.bounds.size.width
    var delegate:HLShareViewDelegate?
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.gray
        self.alpha = 0.8
        createView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func shareShow(){
        let keyWindow = UIApplication.shared.keyWindow
        UIView.animate(withDuration: 0.38) { () -> Void in
            self.alpha = 0.8
            keyWindow?.addSubview(self)
        }
    }
    
    
    func createView() {
        //share view
        let shareBodyView = UIView(frame: CGRect(x: 20, y: (screen_height-200)/2, width: screen_width-40, height: 200))
        shareBodyView.backgroundColor     = UIColor.white
        shareBodyView.layer.cornerRadius  = 5
        shareBodyView.layer.masksToBounds = true
        self.addSubview(shareBodyView)
        let positionX = 20+((screen_width-40)/4-49)/2
        let positionY = (screen_height-200)/2+10
        
        
        //no1
        let noOneButton    = creatBtn(frame: CGRect(x: positionX, y: (screen_height-200)/2+10, width: 49, height: 49),
                                      image: UIImage.init(named:"w")!,
                                      animationFrame: CGRect(x: 20+((screen_width-40)/4-49)/2, y: (screen_height-200)/2+10+10, width: 49, height: 49),
                                      agterDelay: 0)
        noOneButton.tag = 0
        creatLabel(frame: CGRect(x: positionX, y: (screen_height-200)/2+10+49, width: 49, height: 20),
                   animationFrame: CGRect(x: 20+((screen_width-40)/4-49)/2, y: (screen_height-200)/2+10+10+49, width: 49, height: 20),
                   agterDelay: 0,
                   titleText: "wechat")
        
        //no2
        let noTwoButton    = creatBtn(frame: CGRect(x: positionX+(screen_width-40)/4, y: (screen_height-200)/2+10, width: 49, height: 49),
                                      image: UIImage.init(named:"q")!,
                                      animationFrame: CGRect(x: positionX+(screen_width-40)/4, y: (screen_height-200)/2+10+10, width: 49, height: 49),
                                      agterDelay: 0)
        noTwoButton.tag = 1
        creatLabel(frame: CGRect(x: positionX+(screen_width-40)/4, y: (screen_height-200)/2+10+49, width: 49, height: 20),
                   animationFrame: CGRect(x: positionX+(screen_width-40)/4, y: (screen_height-200)/2+10+10+49, width: 49, height: 20),
                   agterDelay: 0,
                   titleText: "QQ")
        
        
        //no3
        let noThreeButton    = creatBtn(frame: CGRect(x: positionX+(screen_width-40)/4*2, y: (screen_height-200)/2+10, width: 49, height: 49),
                                        image: UIImage.init(named:"b")!,
                                        animationFrame: CGRect(x: positionX+(screen_width-40)/4*2, y: (screen_height-200)/2+10+10, width: 49, height: 49),
                                        agterDelay: 0)
        noThreeButton.tag = 2
        creatLabel(frame: CGRect(x: positionX+(screen_width-40)/4*2, y: (screen_height-200)/2+10+49, width: 49, height: 20),
                   animationFrame: CGRect(x: positionX+(screen_width-40)/4*2, y: (screen_height-200)/2+10+10+49, width: 49, height: 20),
                   agterDelay: 0,
                   titleText: "Sina")
        
        //no4
        let noFourButton    = creatBtn(frame: CGRect(x: positionX+(screen_width-40)/4*3, y: (screen_height-200)/2+10, width: 49, height: 49),
                                       image: UIImage.init(named:"d")!,
                                       animationFrame: CGRect(x: positionX+(screen_width-40)/4*3, y: (screen_height-200)/2+10+10, width: 49, height: 49),
                                       agterDelay: 0)
        noFourButton.tag = 3
        creatLabel(frame: CGRect(x: positionX+(screen_width-40)/4*3, y: (screen_height-200)/2+10+49, width: 49, height: 20),
                   animationFrame: CGRect(x: positionX+(screen_width-40)/4*3, y: (screen_height-200)/2+10+10+49, width: 49, height: 20),
                   agterDelay: 0,
                   titleText: "Q")
        
        //no5
        let noFiveButton    = creatBtn(frame: CGRect(x: positionX, y: positionY+100, width: 49, height: 49),
                                       image: UIImage.init(named:"j")!,
                                       animationFrame: CGRect(x: positionX, y: positionY+100+10, width: 49, height: 49),
                                       agterDelay: 0)
        noFiveButton.tag = 4
        creatLabel(frame: CGRect(x: positionX, y: positionY+100+49, width: 49, height: 20),
                   animationFrame: CGRect(x: positionX, y: positionY+100+49+10, width: 49, height: 20),
                   agterDelay: 0,
                   titleText: "Adding")
        
        //no6
        let noSixButton    = creatBtn(frame: CGRect(x: positionX+(screen_width-40)/4, y: positionY+100, width: 49, height: 49),
                                      image: UIImage.init(named:"s")!,
                                      animationFrame: CGRect(x: positionX+(screen_width-40)/4, y: positionY+100+10, width: 49, height: 49),
                                      agterDelay: 0)
        noSixButton.tag = 5
        creatLabel(frame: CGRect(x: positionX+(screen_width-40)/4, y: positionY+100+49, width: 49, height: 20),
                   animationFrame: CGRect(x: positionX+(screen_width-40)/4, y: positionY+100+49+10, width: 49, height: 20),
                   agterDelay: 0,
                   titleText: "Setting")
    }
    
    
    
    @objc func shareButtonClick(sender:UIButton){
        UIView.animate(withDuration: 0.38) { () -> Void in
            self.removeFromSuperview()
        }
        self.delegate?.shareViewDicSelectButWithTag(view: self, btnTag: sender.tag)
    }
    
    
    func removeView(sender:UIButton){
        UIView.animate(withDuration: 0.38) { () -> Void in
            self.removeFromSuperview()
        }
        self.delegate?.shareViewDicSelectButWithTag(view: self, btnTag: sender.tag)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.removeFromSuperview()
    }
    
    
    func creatBtn(frame:CGRect,image:UIImage,animationFrame:CGRect,agterDelay:CGFloat) ->UIButton{
        let shareButton = UIButton(frame: frame)
        shareButton.setBackgroundImage(image, for: UIControlState.normal)
        self.addSubview(shareButton)
        shareButton.layer.cornerRadius = 49/2
        shareButton.layer.masksToBounds = true
        //shareButton.backgroundColor = UIColor.orange
        shareButton.addTarget(self, action: #selector(self.shareButtonClick(sender:)), for: .touchUpInside)
        UIView.animate(withDuration: 1.0, delay: TimeInterval.init(agterDelay), usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: UIViewAnimationOptions.allowUserInteraction, animations: { () -> Void in
            shareButton.frame = animationFrame
        }) { (fnished:Bool) -> Void in}
        return shareButton
    }
    
    func creatLabel(frame:CGRect,animationFrame:CGRect,agterDelay:CGFloat,titleText:String){
        let shareLabel = UILabel(frame: frame)
        shareLabel.text = titleText
        shareLabel.textColor = UIColor.gray
        shareLabel.textAlignment = NSTextAlignment.center
        //shareLabel.backgroundColor = UIColor.red
        shareLabel.font = UIFont.systemFont(ofSize: 12)
        self.addSubview(shareLabel)
        UIView.animate(withDuration: 1.0, delay: TimeInterval.init(agterDelay), usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: UIViewAnimationOptions.allowUserInteraction, animations: { () -> Void in
            shareLabel.frame = animationFrame
        }) { (fnished:Bool) -> Void in}
    }
    
    
    //usingSpringWithDamping :弹簧动画的阻尼值，也就是相当于摩擦力的大小，该属性的值从0.0到1.0之间，越靠近0，阻尼越小，弹动的幅度越大，反之阻尼越大，弹动的幅度越小，如果大道一定程度，会出现弹不动的情况。
    //initialSpringVelocity  :弹簧动画的速率，或者说是动力。值越小弹簧的动力越小，弹簧拉伸的幅度越小，反之动力越大，弹簧拉伸的幅度越大。这里需要注意的是，如果设置为0，表示忽略该属性，由动画持续时间和阻尼计算动画的效果。
}
