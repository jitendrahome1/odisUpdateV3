//
//  AppDelegate.swift
//  ServiceDemo
//
//  Created by IOS on 16/08/17.
//  Copyright © 2017 goigi. All rights reserved.
//
import UIKit

class BaseTableViewCell: UITableViewCell {

    var dataSource: AnyObject!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
