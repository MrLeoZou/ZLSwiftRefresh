//
//  ViewController.swift
//  ZLSwiftRefresh
//
//  Created by 张磊 on 15-3-6.
//  Copyright (c) 2015年 com.zixue101.www. All rights reserved.
//

import UIKit
import Foundation

/**
*  使用说明(Use)：
下拉刷新
self.tableView.toRefreshAction{ () -> () in
    callBack to do..
}

上拉刷新
self.tableView.toLoadMoreAction{ () -> () in
    callBack to do..
}

立刻刷新
self.tableView.nowRefresh{ () -> () in
    callBack to do..
}
*/
class ViewController: UITableViewController {

    // default datas
    var datas:[AnyObject] = [
        "TableView Refresh Example ->",
        "CollectionView Refresh Example ->",
        "WebView Refresh Example ->",
        "自定义动画 -> "
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.datas.count;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell : UITableViewCell! = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        if cell != nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: "cell")
        }
        
        cell.textLabel?.text = self.datas[indexPath.row] as? String
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            // TableView
            var example1Vc = Example1ViewController()
            example1Vc.title = self.datas[indexPath.row] as? String
            self.navigationController?.pushViewController(example1Vc as UIViewController, animated: true)
        }else if indexPath.row == 1{
            // collectionView
            var example2Vc = Example2ViewController()
            example2Vc.title = self.datas[indexPath.row] as? String
            self.navigationController?.pushViewController(example2Vc as UIViewController, animated: true)
        }else if indexPath.row == 2{
            // webView
            var example3Vc = Example3ViewController()
            example3Vc.title = self.datas[indexPath.row] as? String
            self.navigationController?.pushViewController(example3Vc as UIViewController, animated: true)
        }else if indexPath.row == 3{
            // webView
            var example4Vc = Example4ViewController()
            example4Vc.title = self.datas[indexPath.row] as? String
            self.navigationController?.pushViewController(example4Vc as UIViewController, animated: true)
        }
    }
}

