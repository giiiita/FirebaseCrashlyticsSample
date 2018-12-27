//
//  ViewController.swift
//  FirebaseCrashlytics
//
//  Created by 四柳 貴光 on 2018/12/26.
//  Copyright © 2018年 giiiita. All rights reserved.
//

import UIKit
import Crashlytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()        
    }

    @IBAction func tappedCrashButton(_ sender: Any) {
        // 非重大
        let error = NSError(domain: "test error message", code: -1, userInfo: nil)
        Crashlytics.sharedInstance().recordError(error)

        // crashテスト用
        Crashlytics.sharedInstance().crash()
    }


}

