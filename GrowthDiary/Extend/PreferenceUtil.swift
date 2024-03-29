//
//  PreferenceUtil.swift
//  GrowthDiary
//  偏好设置工具类，保存用户登录，使用显示引导界面
//  Created by Toya Sakurai on 2019/9/17.
//  Copyright © 2019 Toya Sakurai. All rights reserved.
//

import Foundation

class PreferenceUtil{
    static func setLogin(_ isLogin:Bool){
        UserDefaults.standard.set(isLogin, forKey: KEY_USER_LOGIN)
    }//以KEY_USER_LOGIN为关键字，存入
    
    //是否登录了
    static func isLogin() -> Bool{
        return UserDefaults.standard.bool(forKey: KEY_USER_LOGIN)
    }//判断：UserDefaults中是否有KEY_USER_LOGIN，如有，则返回true
    
    //是否登录的常量
    private static let KEY_USER_LOGIN = "KEY_USER_LOGIN"
}
