//
//  JournalViewController.swift
//  Odisee/Users/jitendra/Desktop/project/IndusnetProjetc/SWIFT Project/Trular Quotes/Augest/4-08-2017/iOS/Trular/Trular.xcodeproj
//
//  Created by IOS on 8/18/17.
//  Copyright © 2017 goigi. All rights reserved.
//

import UIKit
import XLPagerTabStrip
class JournalViewController: BaseViewController,IndicatorInfoProvider {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- Tab Pager Delegate
    //For Title
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo.init(title: "JOURNAL")
    }

}
