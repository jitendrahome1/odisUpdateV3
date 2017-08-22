//
//  RegistrationViewController.swift
//  Eclipz
//
//  Created by IOS on 16/08/17.
//  Copyright © 2017 goigi. All rights reserved.
//

import UIKit
import JVFloatLabeledTextField
class RegistrationViewController: BaseTableViewController {
    @IBOutlet var imgLogo: UIImageView!
    
    @IBOutlet var lblLogoSubTitle: UILabel!
    @IBOutlet var lblLogoTitle: UILabel!
    @IBOutlet var textScreenName: JVFloatLabeledTextField!
    @IBOutlet var textEmail: UITextField!
    @IBOutlet var textPassword: UITextField!
    @IBOutlet var btnRememberMe: UIButton!
    @IBOutlet var btnNext: UIButton!
    
    @IBOutlet var btnType: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
   
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK:- Action
    @IBAction func actionRemberMe(_ sender: UIButton) {
    }
    
    @IBAction func actionType(_ sender: UIButton) {
    }

    @IBAction func actionNext(_ sender: UIButton) {
    }
    
    

}
