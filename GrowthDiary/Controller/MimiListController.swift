//
//  mimiListController.swift
//  GrowthDiary
//
//  Created by Toya Sakurai on 2019/9/18.
//  Copyright © 2019 Toya Sakurai. All rights reserved.
//

import UIKit

class mimiListController: UIViewController {
    
    @IBAction func backToHomeClick(_ sender: Any) {
        AppDelegate.shared.toHome()
        
    }
    
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
    
    //列表控件
    @IBOutlet weak var tableView: UITableView!
    var dataArray:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "弥弥"
        //设置列表数据源和代理
        tableView.dataSource = self
        tableView.delegate = self
        
        //添加图片
        for index in 1...27{
            dataArray.append("\(index)")
        }
        
        //让列表重新加载数据
        tableView.reloadData()

        
    }
    
    //退出
    func logout(){
        PreferenceUtil.setLogin(false)
        AppDelegate.shared.next()
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        //获取用户点击的索引
        let indexPath = tableView.indexPathForSelectedRow!
        
        //获取对应位置的数据
        let data = dataArray[indexPath.row]
        
        //获取跳转的控制器
        let controller = segue.destination as! ImageDetailController
        
        controller.id = data
    }

}



extension mimiListController:UITableViewDataSource,UITableViewDelegate{
    //返回总数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    //返回当前位置的cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! imageCell
        
        //绑定数据
        cell.bindData(dataArray[indexPath.row])
        
        
        //返回Cell
        return cell
    }
    
    
}
