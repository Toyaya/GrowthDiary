//
//  HomeController.swift
//  GrowthDiary
//  首页
//  Created by Toya Sakurai on 2019/9/17.
//  Copyright © 2019 Toya Sakurai. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    
    @IBAction func onLogoutClick(_ sender: Any) {
        PreferenceUtil.setLogin(false)
        //登录成功,进入首页
        AppDelegate.shared.next()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}