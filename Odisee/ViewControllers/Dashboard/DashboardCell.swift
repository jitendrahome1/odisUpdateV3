//
//  DashboardCell.swift
//  Odisee
//
//  Created by IOS on 8/18/17.
//  Copyright © 2017 goigi. All rights reserved.
//

import UIKit

class DashboardCell: BaseTableViewCell {
    @IBOutlet var imgVideo: UIImageView!
    @IBOutlet var lblVideoTitle: UILabel!
    @IBOutlet var lblPostNameDate: UILabel!
    @IBOutlet var btnShare: UIButton!
    @IBOutlet var btnAdd: UIButton!
    @IBOutlet var btnLike: UIButton!
    @IBOutlet var btnMessge: UIButton!
    @IBOutlet var viewBG: UIView!
    
    override func awakeFromNib() {
        
        self.viewBG.layer.cornerRadius = 8.0
       // self.viewBG.layer.borderWidth = 1.0
    //    self.viewBG.layer.borderColor = UIColor.lightGray.cgColor
    }
}
