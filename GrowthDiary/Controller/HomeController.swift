//
//  HomeController.swift
//  GrowthDiary
//  首页
//  Created by Toya Sakurai on 2019/9/17.
//  Copyright © 2019 Toya Sakurai. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    //pets button关联
    @IBOutlet weak var mimiButton: UIImageView!
    
    @IBOutlet weak var gungunButton: UIImageView!
    
    
    //pets选择
    @objc func mimiClick(){
        AppDelegate.shared.toMimi()
        
    }
    
    @objc func gungunClick(){
        AppDelegate.shared.toGungun()
        
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置导航栏标题
        navigationItem.title = "GrowthDiary"
        // Do any additional setup after loading the view.
        let mimiTap = UITapGestureRecognizer(target: self, action: #selector(mimiClick))
        mimiButton.isUserInteractionEnabled = true
        mimiButton.addGestureRecognizer(mimiTap)
        
        let gungunTap = UITapGestureRecognizer(target: self, action: #selector(gungunClick))
        gungunButton.isUserInteractionEnabled = true
        gungunButton.addGestureRecognizer(gungunTap)
        
        
        
        
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
