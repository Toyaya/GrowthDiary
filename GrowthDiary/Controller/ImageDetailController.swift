//
//  ImageDetailController.swift
//  GrowthDiary
//  图片详情界面
//  Created by Toya Sakurai on 2019/9/22.
//  Copyright © 2019 Toya Sakurai. All rights reserved.
//

import UIKit

class ImageDetailController: UIViewController {
    
    //图片控件
    @IBOutlet weak var IvBanner: UIImageView!
    
    var id:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "图片详情"
        //显示图片
        IvBanner.image = UIImage(named: id)

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
