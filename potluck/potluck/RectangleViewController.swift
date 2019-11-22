//
//  RectangleViewController.swift
//  potluck
//
//  Created by Vedi Chaudhri on 11/21/19.
//  Copyright © 2019 Vedi Chaudhri. All rights reserved.
//

import UIKit

class RectangleViewController: UIViewController {
    var charName = "char1"
    let defaults = UserDefaults.standard
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var aboutDescription: UITextView!
    @IBOutlet weak var tellAStroyDescription: UITextView!
    @IBOutlet weak var addButton: UIButton!
    
    
    @IBAction func addButtonPressed(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let parentVC = self.storyboard?.instantiateViewController(withIdentifier: "characterProfile") as! CharProfileViewController
        //charName = parentVC.charID
        let charInfo : [String:Any] = defaults.object(forKey: charName) as! [String : Any]
        nameLabel.text = charInfo["firstName"] as! String + " " + (charInfo["lastName"] as! String)
        aboutLabel.text = "About " + (charInfo["firstName"] as! String)
        //TODO : fix bio description!!
        aboutDescription.text = "Sarah is currently 26 years old and grew up in Trinidad. She is passionate about running, and is hoping to be a professional athlete.\n\nNow that she’s out pursuing her dream, she wants to be inspired by similar athletes that have achieved greatness. "
        tellAStroyDescription.text = "Add to " + (charInfo["firstName"] as! String) + "'s timeline by telling a story that builds the character."
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
