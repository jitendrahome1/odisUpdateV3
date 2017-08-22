//
//  LoginViewController.swift
//  Odisee
//
//  Created by IOS on 16/08/17.
//  Copyright © 2017 goigi. All rights reserved.
//

import UIKit
import XLPagerTabStrip
class LoginViewController: BaseTableViewController,IndicatorInfoProvider {

    @IBOutlet var imgLogo: UIImageView!
    
    @IBOutlet var lblLogoSubTitle: UILabel!
    @IBOutlet var lblLogoTitle: UILabel!
    
    @IBOutlet var btnFacebook: UIButton!
    
    @IBOutlet var textEmail: UITextField!
    
    @IBOutlet var textPassword: UITextField!
    
    @IBOutlet var btnRememberMe: UIButton!
    
    @IBOutlet var btnLostPassword: UIButton!
    
    @IBOutlet var btnNext: UIButton!
    @IBOutlet var btnCreateAccount: UIButton!
    
    @IBOutlet var btnTermsUsed: UIButton!
    
    @IBOutlet var btnPolicy: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.backgroundColor = BASECOLOR
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
    
  // MARK:- Action
    
    
    @IBAction func actionLoginFb(_ sender: UIButton) {
    }
    
    @IBAction func actionRemberMe(_ sender: UIButton) {
    }
    
    @IBAction func actionLostPassword(_ sender: UIButton) {
    }
    
    @IBAction func actionCreateAccount(_ sender: UIButton) {
        
        let registrationVC = loginStoryboard.instantiateViewController(withIdentifier: String(describing: RegistrationViewController.self)) as! RegistrationViewController
        self.navigationController?.pushViewController(registrationVC, animated: true)
        
    }
    
    @IBAction func actionNext(_ sender: UIButton) {
    
        let containerVC = loginStoryboard.instantiateViewController(withIdentifier: String(describing: TQContainerVC.self)) as! TQContainerVC
        
        TQNavigationHelper.sharedInstance.navigationController.pushViewController(containerVC, animated: true)
    
    }
    
    @IBAction func actionTermsUsed(_ sender: UIButton) {
    }
    
    @IBAction func actionPolicy(_ sender: UIButton) {
    }
    //MARK:- Tab Pager Delegate
    //For Title
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo.init(title: "LOGIN")
    }
   
}

