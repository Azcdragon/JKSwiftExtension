//
//  UIApplicationExtensionViewController.swift
//  JKSwiftExtension_Example
//
//  Created by IronMan on 2020/11/9.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

class UIApplicationExtensionViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headDataArray = ["一、基本的扩展"]
        dataArray = [["获取屏幕的方向", "获取根控制器", "设备信息的获取", "app定位区域", "网络状态是否可用", "消息推送是否可用", "用户相册是否可用", "注册APNs远程推送", "app商店链接", "app详情链接"]]
    }
}

// MARK:- 一、基本的扩展
extension UIApplicationExtensionViewController {
    
    // MARK: 1.10、app详情链接
    @objc func test110() {
        JKPrint("app详情链接：\(UIApplication.jk.appDetailUrlWithID(""))")
    }
    
    // MARK: 1.9、app商店链接
    @objc func test19() {
        JKPrint("app商店链接：\(UIApplication.jk.appUrlWithID(""))")
    }
    
    // MARK: 1.8、注册APNs远程推送
    @objc func test18() {
        JKPrint("注册APNs远程推送：\(UIApplication.jk.registerAPNsWithDelegate(self))")
    }
    
    // MARK: 1.7、用户相册是否可用
    @objc func test17() {
        JKPrint("用户相册是否可用：\(UIApplication.jk.hasRightOfPhotoLibrary())")
    }
    
    // MARK: 1.6、消息推送是否可用
    @objc func test16() {
        JKPrint("消息推送是否可用：\(UIApplication.jk.hasRightOfPush())")
    }
    
    // MARK: 1.5、网络状态是否可用
    @objc func test15() {
        JKPrint("网络状态是否可用：\(UIApplication.jk.reachable())")
    }
    
    // MARK: 1.4、app定位区域
    @objc func test14() {
        JKPrint("app定位区域", "\(UIApplication.jk.localizations ?? "")")
    }
    
    // MARK: 1.3、设备信息的获取
    @objc func test13() {
        JKPrint("设备信息的获取", "\(UIApplication.jk.userAgent)")
    }
    
    // MARK: 1.2、获取根控制器
    @objc func test12() {
        guard let vc = UIApplication.jk.topViewController() else {
            return
        }
        JKPrint("获取屏幕的方向", "\(vc.className)")
    }
    
    // MARK: 1.1、获取屏幕的方向
    @objc func test11() {
        JKPrint("获取屏幕的方向", "\(UIApplication.jk.screenOrientation)")
    }
}
