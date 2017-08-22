//
//  AppDelegate.swift
//  ServiceDemo
//
//  Created by IOS on 16/08/17.
//  Copyright © 2017 goigi. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class BaseCollectionViewController: UICollectionViewController {
    
    var backButtonEnabled: Bool = false
    var searchButtonEnabled: Bool = false
    var notificationButtonEnabled: Bool = false
    var filterButtonEnabled: Bool = false
    var menuButtonEnabled: Bool = false
    var crossButtonEnabled: Bool = false
    var barButtonArray = [UIBarButtonItem]()
    var filterButton = UIBarButtonItem()
    
	override func viewDidLoad() {
		super.viewDidLoad()
        
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()

	}
}


