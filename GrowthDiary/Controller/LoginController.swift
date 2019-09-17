//
//  LoginController.swift
//  GrowthDiary
//  登录界面
//  Created by Toya Sakurai on 2019/9/14.
//  Copyright © 2019 Toya Sakurai. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var lbInfo: UILabel!
    
    @IBOutlet weak var tfUsername: UITextField!
    
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onLoginClick(_ sender: Any) {
        //print("logincontroller login")
        
        let username = tfUsername.text
        if username!.isEmpty{
            lbInfo.text = "请输入邮箱"
            return
        }
        //guard 和if是相反的
        guard username!.isEmail() else{
            lbInfo.text = "邮箱格式不正确!"
            return
        }
        
        let password = tfPassword.text!//这里解包过了，下面不用再次解包
        if password.isEmpty{
            lbInfo.text = "请输入密码(6-15位)"
            return
        }
        guard password.isPassword() else{
            lbInfo.text = "密码格式不正确!"
            return
        }
        
        //调用登录接口,本地登录
        if USERNAME == username && PASSWORD == password{
            //保存登录状态
            PreferenceUtil.setLogin(true)
            //登录成功,进入首页
            AppDelegate.shared.next()
        }
        else{
            //登录失败
            lbInfo.text = "用户名或密码错误!"
            
        }
        
        
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
