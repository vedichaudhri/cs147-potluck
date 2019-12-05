//
//  AddStoryViewController.swift
//  potluck
//
//  Created by Vedi Chaudhri on 11/27/19.
//  Copyright © 2019 Vedi Chaudhri. All rights reserved.
//

import UIKit

class AddStoryViewController: UIViewController,  UITextViewDelegate {
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
    
    @IBAction func uploadAttachmentPressed(_ sender: Any) {
        attchmentTextField.text = "File added successfully"
    }
    @IBAction func attachmentPressed(_ sender: Any) {
        attchmentTextField.text = "File added successfully"
    }
    @IBAction func attPressed(_ sender: Any) {
        attchmentTextField.text = "File added successfully"
    }
    
    
    @IBAction func postButtonPressed(_ sender: Any) {
        //TO DO: find a way to store this data :(((
        //let infoToStore = {charID: {"storyName":titleTextField.text}}
        
        //defaults.set(<#T##value: Any?##Any?#>, forKey: charID + "Stories")
        
        self.dismiss(animated: true, completion:nil)
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if storyDescriptionTextView.textColor == UIColor.lightGray {
            storyDescriptionTextView.text = nil
            storyDescriptionTextView.textColor = UIColor.black
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        charID = defaults.string(forKey: "charToView")!
        let charInfo : [String:Any] = defaults.object(forKey: charID) as! [String : Any]
        nameLabel.text = charInfo["firstName"] as? String /*+ " " + (charInfo["lastName"] as! String)*/
        let charAvatarInfo = UserDefaults.standard.object(forKey: "charAvatarInfo") as! [String:String]
        let imageName = charAvatarInfo[charID]
        avatarImage.image = UIImage(named: imageName ?? "SarahLamAvatar")
        storyDescriptionTextView.layer.borderWidth = 0.5
        storyDescriptionTextView.layer.borderColor = UIColor.lightGray.cgColor
        storyDescriptionTextView.layer.cornerRadius = 4.0
        storyDescriptionTextView.text = "Tell your story here. If there’s a problem, make it clear that there is, as we’ll flag it as such. "
        storyDescriptionTextView.textColor = UIColor.lightGray
        
        titleTextField.layer.borderColor = UIColor.lightGray.cgColor
        titleTextField.layer.borderWidth = 0.5
        titleTextField.layer.cornerRadius = 4.0

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
