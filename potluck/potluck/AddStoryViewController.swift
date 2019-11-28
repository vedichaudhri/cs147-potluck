//
//  AddStoryViewController.swift
//  potluck
//
//  Created by Vedi Chaudhri on 11/27/19.
//  Copyright © 2019 Vedi Chaudhri. All rights reserved.
//

import UIKit

class AddStoryViewController: UIViewController {
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var storyDescriptionTextView: UITextView!
    @IBOutlet weak var attchmentTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    var charID: String = ""
    let defaults = UserDefaults.standard
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion:nil)
    }
    
    
    @IBAction func postButtonPressed(_ sender: Any) {
        //TO DO: find a way to store this data :(((
        //let infoToStore = {charID: {"storyName":titleTextField.text}}
        
        //defaults.set(<#T##value: Any?##Any?#>, forKey: charID + "Stories")
        
        self.dismiss(animated: true, completion:nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        charID = defaults.string(forKey: "charToView")!
        let charInfo : [String:Any] = defaults.object(forKey: charID) as! [String : Any]
        nameLabel.text = charInfo["firstName"] as! String + " " + (charInfo["lastName"] as! String)

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
