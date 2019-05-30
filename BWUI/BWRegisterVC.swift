//
//  BWRegisterVC.swift
//  BWUI
//
//  Created by Kumar, Peddi on 30/05/19.
//  Copyright © 2019 Jaiswal, Akash. All rights reserved.
//

import UIKit

class BWRegisterVC: UIViewController {
    
    //MARK: - IBOutlet(s) & Variable(s)
    
    @IBOutlet weak var btn_back: UIButton!
    
    @IBOutlet weak var lbl_welcomeStatic: UILabel!
    
    @IBOutlet weak var btn_downBack: UIButton! {
        didSet {
            btn_downBack.layer.borderColor = UIColor.init(named: "DBlue")?.cgColor
            btn_downBack.layer.borderWidth = 2.0
            btn_downBack.layer.masksToBounds = true
            btn_downBack.clipsToBounds = true
        }
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    //MARK: - IBAction Method(s)
    
    @IBAction func btn_downBackAction(_ sender: UIButton) {
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btn_backAction(_ sender: UIButton) {
        _ = self.navigationController?.popViewController(animated: true)
    }
}
