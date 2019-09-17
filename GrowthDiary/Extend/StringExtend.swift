//
//  StringExtend.swift
//  GrowthDiary
//  字符串扩展类，添加了一些常用的方法
//  Created by Toya Sakurai on 2019/9/17.
//  Copyright © 2019 Toya Sakurai. All rights reserved.
//

import UIKit

extension String {
    func isEmail() -> Bool{
        let predicate = NSPredicate(format: "SELF MATCHES %@",REGX_EMAIL)
        return predicate.evaluate(with:self)//匹配返回true，否则返回false
    }
    
    func isPassword() -> Bool{
        if self.count >= 6 && self.count <= 15{
            return true
        }
        return false
    }
}
