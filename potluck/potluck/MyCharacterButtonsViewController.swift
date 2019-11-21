//
//  MyCharacterButtonsView.swift
//  potluck
//
//  Created by Vedi Chaudhri on 11/20/19.
//  Copyright © 2019 Vedi Chaudhri. All rights reserved.
//

import UIKit

class MyCharacterButtonsViewController: UIViewController {
    @IBOutlet weak var character1: UIButton!
    @IBOutlet weak var character2: UIButton!
    @IBOutlet weak var character3: UIButton!
//    var buttonStates: [String:[ String:Bool]] = [:]
    var char1Info: [String:Any] = [:]
    var char2Info: [String:Any] = [:]
    var char3Info: [String:Any] = [:]
    let defaults = UserDefaults.standard
   
    @IBAction func character1Pressed(_ sender: Any) {
//            if (buttonStates["character1"]?["created"] == false) {
        if char1Info["created"]as?Bool == false {
                //segue to create char screen & pass buttonStates value
                performSegue(withIdentifier: "createCharacter1", sender: nil)
                
            } else {
                //segue to char page
            }
        
    }
    
    @IBAction func character2Pressed(_ sender: Any) {
        if char2Info["created"]as?Bool == false {
            //segue to create char screen & pass buttonStates value
            performSegue(withIdentifier: "createCharacter2", sender: nil)
            
        } else {
            //segue to char page
        }
    }
    
    @IBAction func character3Pressed(_ sender: Any) {
        if char3Info["created"]as?Bool == false {
            //segue to create char screen & pass buttonStates value
            performSegue(withIdentifier: "createCharacter3", sender: nil)
            
        } else {
            //segue to char page
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        char1Info =  defaults.object(forKey: "char1") as! [String : Any]
        char2Info =  defaults.object(forKey: "char2") as! [String : Any]
        char3Info =  defaults.object(forKey: "char3") as! [String : Any]
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVC = segue.destination as? CreateCharacterViewController {
            if segue.identifier == "createCharacter1" {
                nextVC.charToCreate = "char1"
            } else if segue.identifier == "createCharacter2" {
                nextVC.charToCreate = "char2"
            } else {
                nextVC.charToCreate = "char3"
            }
        }
    }
}
