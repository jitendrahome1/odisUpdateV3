//
//  DashboardViewController.swift
//  Odisee
//
//  Created by IOS on 8/18/17.
//  Copyright © 2017 goigi. All rights reserved.
//

import UIKit
import XLPagerTabStrip
class DashboardViewController: BasePagerVC {
override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
      self.pagerShouldScroll = true
        
        self.showSidePanel = true
        self.hideNavigationBar = false
        self.setLeftNavigationButtons(leftButtonType: .Menu, backImage: nil, barTintColor: .white, itemTintColor: .colorWithHexString("#404041"),isBarTranslucent: false)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController]  {
        
        let journalVC = dashboardStoryboard.instantiateViewController(withIdentifier: String(describing: JournalViewController.self)) as! JournalViewController
        
         let loginVC = dashboardStoryboard.instantiateViewController(withIdentifier: String(describing: LoginViewController.self)) as! LoginViewController
        return [journalVC,loginVC]
    }
   
}


//extension DashboardViewController {
//    
//    // MARK: UITableViewDataSource methods
//     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 3
//    }
//    
//     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        let cell: DashboardCell = tableView.dequeueReusableCell(withIdentifier: String(describing: DashboardCell.self)) as! DashboardCell
//
//        return cell
//    }
//    
//    // MARK: UITableViewDelegate methods
//     func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
//    {
//        return IS_IPAD() ? 400 : 352
//    }
//     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        
//    }
//    
//}
