//
//  AppDelegate+ShareSDK.swift
//  LearnShareSDK
//
//  Created by 仲召俊 on 2019/10/20.
//  Copyright © 2019 ZZJ. All rights reserved.
//

import UIKit

extension AppDelegate {
    ///ShareSDK注册方法
    func initShareSDK() {
        ShareSDK.registPlatforms { (register) in
            register?.setupLinkedIn(byApiKey: "81k2i3f9k5bf7f", secretKey: "0GZV9dF81IPz11Gx", redirectUrl: "https://www.baidu.com")
        }
    }
}
