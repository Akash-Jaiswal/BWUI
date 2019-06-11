//
//  RegisterDetailsVC.swift
//  BWUI
//
//  Created by Kumar, Peddi on 30/05/19.
//  Copyright © 2019 Jaiswal, Akash. All rights reserved.
//

import UIKit

class RegisterDetailsVC: UIViewController {
    //MARK: - IBOutlet(s) & Variable(s)

    @IBOutlet weak var tableView_registerList: UITableView! {
        didSet {
            tableView_registerList.isScrollEnabled = false
        }
    }
    
    // NSLayout Constraints
    @IBOutlet weak var tableView_heightConstraints: NSLayoutConstraint!
    
    
    let registerListArray = ["Registration HSA without Card","Registration HSA with Card","Registration Notional Accounts"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.settingDynamicTableViewHeight()
    }
    
    //MARK:- Privater Method(s)
    private func settingDynamicTableViewHeight() {
        DispatchQueue.main.async {
            self.tableView_heightConstraints.constant = CGFloat((self.registerListArray.count) * 58)
            self.tableView_registerList.reloadData()
        }
    }
}

extension RegisterDetailsVC:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return registerListArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "RegisterListTableCell", for: indexPath) as? RegisterListTableCell {
            cell.lbl_list.text = registerListArray[indexPath.section]
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let bwRegisterVc = AppDelegate.sharedInstances().registerStoryboard?.instantiateViewController(withIdentifier: "BWRegisterVC") as! BWRegisterVC
        self.navigationController?.pushViewController(bwRegisterVc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 48
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        
        let view:UIView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.bounds.size.width, height: 8))
        view.backgroundColor = .clear
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 8.0
    }

}



class RegisterListTableCell: UITableViewCell {
    
    //MARK: - IBOutlet(s) & Variable(s)

    @IBOutlet weak var lbl_list: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
    
    
    
    
}
