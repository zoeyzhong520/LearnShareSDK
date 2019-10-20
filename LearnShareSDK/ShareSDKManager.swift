//
//  ShareSDKManager.swift
//  LearnShareSDK
//
//  Created by 仲召俊 on 2019/10/20.
//  Copyright © 2019 ZZJ. All rights reserved.
//

import Foundation

struct ShareSDKManager {
    static func share(text: String, images: String, url: URL, title: String, type: SSDKContentType, platformType: SSDKPlatformType) {
        let params = NSMutableDictionary()
        
        params.ssdkSetupShareParams(byText: text, images: images, url: url, title: title, type: type)
        
        ShareSDK.share(platformType, parameters: params) { (state, userdata, contentEntity, error) in
            switch state {
            case .success:
                print("Share Success")
            case .fail:
                print("Share Fail:\(String(describing: error))")
            case .cancel:
                print("Share Canceled")
            default:
                break
            }
        }
    }
}
