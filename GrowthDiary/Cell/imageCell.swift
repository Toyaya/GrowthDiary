//
//  imageCell.swift
//  GrowthDiary
//  图片cell //  Created by Toya Sakurai on 2019/9/19.
//  Copyright © 2019 Toya Sakurai. All rights reserved.
//

import UIKit

class imageCell: UITableViewCell {

    @IBOutlet weak var ivBanner: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func bindData(_ data:String){
        //根据名称创建image并赋值
        let image = UIImage(named: data)
        ivBanner.image = image
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
