//
//  2ViewController.swift
//  potluck
//
//  Created by Vedi Chaudhri on 12/6/19.
//  Copyright © 2019 Vedi Chaudhri. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController, UITextFieldDelegate {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("%%%%%%%%")
        self.view.endEditing(true)
    }
    
    // user presses return key
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var repeatPassword: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var phone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        name.delegate = self
        password.delegate = self
        phone.delegate = self
        repeatPassword.delegate = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
