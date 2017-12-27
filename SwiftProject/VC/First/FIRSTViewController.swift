//
//  FIRSTViewController.swift
//  SwiftProject
//
//  Created by 杜海龙 on 2017/12/25.
//  Copyright © 2017年 杜海龙. All rights reserved.
//

import UIKit

class FIRSTViewController: AppViewController,UITableViewDelegate,UITableViewDataSource,UINavigationControllerDelegate {
    
    //override var kScreenBound: CGRect
    var firstView = FIRSTView.init(frame: kScreenBound)
    let cellIdentity = "cellIdentity"
    
    var firstArray = [["key":"first_demo","title":"机械狗"],
                      ["key":"first_1","title":"星星👀"],
                      ["key":"first_2","title":"国家"],
                      ["key":"first_3","title":"办公"],
                      ["key":"first_4","title":"广播"],
                      ["key":"first_5","title":"通讯"],
                      ["key":"first_6","title":"合作"],
                      ["key":"first_7","title":"环保"],
                      ["key":"first_8","title":"面条🍜"],
                      ["key":"first_9","title":"音乐"],
                      ["key":"first_10","title":"闹钟"],
                      ["key":"first_11","title":"汽车"],
                      ["key":"first_12","title":"视频"]];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self as? UIGestureRecognizerDelegate
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled  = true
        
        self.navigationController?.delegate = self
        
        self.view.backgroundColor = UIColor.yellow
        firstView.firstTableView.delegate = self
        firstView.firstTableView.dataSource=self
        self.view = firstView
        
        self.mjRefreshHead()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled  = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled  = false
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return firstArray.count
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = UIView.init()
        footer.backgroundColor = UIColor.lightGray
        footer.alpha = 0.5
        return footer
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.01
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView.init()
        header.backgroundColor = UIColor.clear
        return header
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var dic = self.firstArray[indexPath.section]
        
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentity) as? FirstTableViewCell
        if cell==nil {
            cell = FirstTableViewCell.init()
        }
        
        cell?.setImageNane(imageName: dic["key"]! as NSString, title: dic["title"]! as NSString)
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        print("click")
        let firstDetail = FirstDetailViewController.init()
        firstDetail.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(firstDetail, animated: true)
        
    }
    
    //nav delegate
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        print(viewController)
    }
    
    //setting Refresh
    func mjRefreshHead() {
        let mjRefreshNormalHeader = MJRefreshNormalHeader.init()
        mjRefreshNormalHeader.setRefreshingTarget(self, refreshingAction: #selector(self.loadData))
        mjRefreshNormalHeader.lastUpdatedTimeLabel.isHidden = true
        mjRefreshNormalHeader.setTitle("下拉刷新", for: MJRefreshState.idle)
        mjRefreshNormalHeader.setTitle("释放更新", for: MJRefreshState.pulling)
        mjRefreshNormalHeader.setTitle("加载中...", for: MJRefreshState.refreshing)
        firstView.firstTableView.mj_header = mjRefreshNormalHeader
    }
    
    @objc func loadData() {
        print("load data ...")
        firstArray.insert(["key":"first_1","title":"星星👀"], at: 0)
        firstView.firstTableView.reloadData()
        firstView.firstTableView.mj_header.endRefreshing()
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
