//
//  CreateCharacterViewController.swift
//  potluck
//
//  Created by Vedi Chaudhri on 11/20/19.
//  Copyright © 2019 Vedi Chaudhri. All rights reserved.
//

import UIKit

class CreateCharacterViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate  {
    var charToCreate = "" // "char1", "char2", or "char3"
    
    /*
     * TODO :  connect the entries as iboutlet
     */
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var location: UITextField!
    @IBOutlet weak var bio: UITextView!
    @IBOutlet weak var avatarButton: UIButton!
    
    @IBAction func addAvatarButtonPressed(_ sender: Any) {
        
        if (charToCreate == "char1") {
            avatarButton.setImage( UIImage.init(named: "SarahLamAvatar"), for: .normal)
        }
        if (charToCreate == "char2") {
            avatarButton.setImage( UIImage.init(named: "ZariaJonesAvatar"), for: .normal)
        }
        if (charToCreate == "char3") {
            avatarButton.setImage( UIImage.init(named: "SergioGarciaAvatar"), for: .normal)
        }
    }
    /*
     * TODO :  connect IBaction to "create" button and update the user defaults
     * when button is pressed. get values fromm the iboutlet above ^
     */
    
    @IBAction func createChar(_ sender: Any) {
        let defaults = UserDefaults.standard
//        let updatedInfo : [String:Any] = ["created":true, "firstName":firstName.text, "lastName":lastName.text, "gender":gender.text, "age":age.text, "location":location.text/*, "bio":bio.text*/]
        let updatedInfo : [String:Any] = ["created":true, "firstName":firstName.text ?? "", "lastName":lastName.text ?? "", "gender":gender.text ?? "", "age":age.text ?? "", "location":location.text ?? "", "bio":bio.text, "timeline":[[" ", " ", " "]]]
        defaults.set(updatedInfo, forKey: charToCreate)
        self.dismiss(animated: true, completion:nil)
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion:nil)
    }
    
    
    // hide key board when the user touches outside keyboard
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("%%%%%%%%")
        self.view.endEditing(true)
    }
    
    // user presses return key
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bio.layer.borderWidth = 1.0
        bio.layer.borderColor = UIColor.lightGray.cgColor
        bio.layer.cornerRadius = 0
        firstName.delegate = self
        lastName.delegate = self
        gender.delegate = self
        age.delegate = self
        location.delegate = self
        bio.delegate = self
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
