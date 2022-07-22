//
//  AddController.swift
//  MonTrousseau
//
//  Created by kenter on 21/07/2022.
//

import UIKit

class AddController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var siteTF: UITextField!
    @IBOutlet weak var mailTF: UITextField!
    @IBOutlet weak var pwdTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        siteTF.delegate = self
        mailTF.delegate = self
        pwdTF.delegate = self
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        view.endEditing(true)
        let newItem = Item(
            site: siteTF.text,
            username: mailTF.text,
            password: pwdTF.text
        )
        Helper.shared.add(newItem)
        self.navigationController?.popViewController(animated: true)
    }
    
}
