//
//  SplashController.swift
//  GrowthDiary
//  启动界面
//  Created by Toya Sakurai on 2019/9/14.
//  Copyright © 2019 Toya Sakurai. All rights reserved.
//

import UIKit

class SplashController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        AppDelegate.shared.next()

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
