//
//  DetailController.swift
//  MonTrousseau
//
//  Created by kenter on 21/07/2022.
//

import UIKit

class DetailController: UIViewController {
    
    @IBOutlet weak var siteLbl: UILabel!
    @IBOutlet weak var usernameLbl: UILabel!
    @IBOutlet weak var showHidePwd: UILabel!
    @IBOutlet weak var showSwitch: UISwitch!
    @IBOutlet weak var pwdLbl: UILabel!
    
    var item: Item!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showSwitch.isOn = false
        siteLbl.text = item.safeSite
        usernameLbl.text = item.safeUsername
        pwdLbl.text = item.safePassword
        setLblSwith(bool: !showSwitch.isOn)
    }
    
    func setLblSwith(bool: Bool) {
        pwdLbl.isHidden = !bool
        showHidePwd.text = !bool ? "Afficher le mot de passe" : "Cacher le mot de passe"
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        setLblSwith(bool: !sender.isOn)
    }
    
}
