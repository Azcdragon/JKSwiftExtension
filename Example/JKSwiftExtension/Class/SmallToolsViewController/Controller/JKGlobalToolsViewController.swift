//
//  JKGlobalToolsViewController.swift
//  JKSwiftExtension_Example
//
//  Created by IronMan on 2020/12/3.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class JKGlobalToolsViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        headDataArray = ["一、基本的工具"]
        dataArray = [["拨打电话", "App更新", "从 storyboard 中唤醒 viewcontroller", "传进某个版本号 个 当前app版本号作对比", "获取本机IP", "前往App Store进行评价", "获取连接wifi的ip地址, 需要定位权限和添加Access WiFi information", "获取连接wifi的名字和mac地址, 需要定位权限和添加Access WiFi information"]]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

// MARK:- 一、基本的工具
extension JKGlobalToolsViewController {
    
    // MARK: 1.8、获取连接wifi的名字和mac地址, 需要定位权限和添加Access WiFi information
    @objc func test18() {
        JKPrint("获取连接wifi的名字和mac地址, 需要定位权限和添加Access WiFi information", "连接wifi的名字：\(JKGlobalTools.getWifiNameWithMac().wifiName ?? "没有获取到")", "连接wifi的mac地址：\(JKGlobalTools.getWifiNameWithMac().macIP ?? "没有获取到")")
    }
    
    // MARK: 1.7、获取连接wifi的ip地址, 需要定位权限和添加Access WiFi information
    @objc func test17() {
        JKPrint("获取连接wifi的ip地址, 需要定位权限和添加Access WiFi information", "连接wifi的ip地址：\(JKGlobalTools.getWiFiIP() ?? "没有获取到")")
    }
    
    // MARK: 1.6、前往App Store进行评价
    @objc func test16() {
        JKPrint("前往App Store进行评价")
        // 抖音：1142110895
        JKGlobalTools.evaluationInAppStore(appid: "1142110895")
    }
    
    // MARK: 1.5、获取本机IP
    @objc func test15() {
        JKPrint("获取本机IP：\(JKGlobalTools.getIPAddress() ?? "没有获取到本机IP")")
    }
    
    // MARK: 1.4、传进某个版本号 个 当前app版本号作对比
    @objc func test14() {
        
        let version1 = "0.0.1"
        let version2 = "1.0.0"
        let version3 = "1.2.1"
        JKPrint("传进某个版本号 个 当前app版本号作对比", "新的版本号：\(version1) 是否大于当前版本：\(Bundle.jk.appVersion) 结果：\(JKGlobalTools.compareVersion(version: version1))", "新的版本号：\(version2) 是否大于当前版本：\(Bundle.jk.appVersion) 结果：\(JKGlobalTools.compareVersion(version: version2))", "新的版本号：\(version3) 是否大于当前版本：\(Bundle.jk.appVersion) 结果：\(JKGlobalTools.compareVersion(version: version3))")
    }
    
    // MARK: 1.3、从 storyboard 中唤醒 viewcontroller
    @objc func test13() {
        JKPrint("从 storyboard 中唤醒 viewcontroller")
    }
    
    // MARK: 1.2、App更新
    @objc func test12() {
        JKPrint("App更新")
        
        // 抖音：1142110895
        JKGlobalTools.updateApp(vc: self, appId: "1142110895")
    }
    
    // MARK: 1.1、拨打电话
    @objc func test11() {
        JKPrint("拨打电话")
        
        JKGlobalTools.callPhone(phoneNumber: "18500652880") { (_) in
        }
    }
}

