//
//  ViewController.swift
//  LearnShareSDK
//
//  Created by 仲召俊 on 2019/10/19.
//  Copyright © 2019 ZZJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let shareLinkedInBtn = UIButton(type: .system)
        shareLinkedInBtn.setTitle("Share to LinkedIn", for: .normal)
        shareLinkedInBtn.frame = CGRect(x: 0, y: 0, width: 200, height: 60)
        shareLinkedInBtn.center = view.center
        shareLinkedInBtn.addTarget(self, action: #selector(shareLinkedIn), for: .touchUpInside)
        view.addSubview(shareLinkedInBtn)
    }

    @objc func shareLinkedIn() {
        //分享领英
        ShareSDKManager.share(text: "测试领英分享", images: "http://c.hiphotos.baidu.com/image/pic/item/b58f8c5494eef01f40ef23e9edfe9925bc317d26.jpg", url: URL(string: "http://www.baidu.com")!, title: "", type: .webPage, platformType: .typeLinkedIn)
    }

}

