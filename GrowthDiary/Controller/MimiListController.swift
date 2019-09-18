//
//  mimiListController.swift
//  GrowthDiary
//
//  Created by Toya Sakurai on 2019/9/18.
//  Copyright © 2019 Toya Sakurai. All rights reserved.
//

import UIKit

class mimiListController: UIViewController {
    @IBAction func onLogoutClick(_ sender: Any) {
        let controller = UIAlertController(title: "提示", message: "你确定退出吗？", preferredStyle: .alert)
        
        //确定按钮
        let confirmAction = UIAlertAction(title: "确定", style: .default) { (action) in
            self.logout()
        }
        
        
        //取消按钮
        let cancelAction = UIAlertAction(title: "取消", style: .default, handler: nil)
        
        //将按钮添加到控制器
        controller.addAction(confirmAction)
        controller.addAction(cancelAction)
        
        present(controller,animated: true,completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //退出
    func logout(){
        PreferenceUtil.setLogin(false)
        AppDelegate.shared.next()
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
