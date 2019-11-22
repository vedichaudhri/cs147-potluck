//
//  CreateCharacterViewController.swift
//  potluck
//
//  Created by Vedi Chaudhri on 11/20/19.
//  Copyright © 2019 Vedi Chaudhri. All rights reserved.
//

import UIKit

class CreateCharacterViewController: UIViewController {
    var charToCreate = "" // "char1", "char2", or "char3"
    
    /*
     * TODO :  connect the entries as iboutlet
     */
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var bio: UILabel!
    /*
     * TODO :  connect IBaction to "create" button and update the user defaults
     * when button is pressed. get values fromm the iboutlet above ^
     */
    
    @IBAction func createChar(_ sender: Any) {
        let defaults = UserDefaults.standard
        let updatedInfo : [String:Any] = ["created":true, "firstName":firstName.text, "lastName":lastName.text, "gender":gender.text, "age":age.text, "location":location.text, "bio":"bio"]
        defaults.set(updatedInfo, forKey: charToCreate)
        self.dismiss(animated: true, completion:nil)
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion:nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
