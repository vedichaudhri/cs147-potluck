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

        if char1Info["created"]as?Bool == false {
                //segue to create char screen & pass buttonStates value
                //performSegue(withIdentifier: "createCharacter1", sender: nil)
            let newVC = self.storyboard?.instantiateViewController(withIdentifier: "createCharacter") as! CreateCharacterViewController
            newVC.charToCreate = "char1"
            self.show(newVC, sender: self)
            //"create character"
                
        } else {
                //segue to char page
                //performSegue(withIdentifier: "char1Profile", sender: nil)
            let newVC = self.storyboard?.instantiateViewController(withIdentifier: "characterProfile") as! CharProfileViewController
            newVC.charID = "char1"
            self.show(newVC, sender: self)
        }
        
    }
    
    @IBAction func character2Pressed(_ sender: Any) {
        if char2Info["created"]as?Bool == false {
            //segue to create char screen & pass buttonStates value
            //performSegue(withIdentifier: "createCharacter2", sender: nil)
            let newVC = self.storyboard?.instantiateViewController(withIdentifier: "createCharacter") as! CreateCharacterViewController
            newVC.charToCreate = "char2"
            self.show(newVC, sender: self)
            
        } else {
            //segue to char page
            //performSegue(withIdentifier: "char2Profile", sender: nil)
            let newVC = self.storyboard?.instantiateViewController(withIdentifier: "characterProfile") as! CharProfileViewController
            newVC.charID = "char2"
            self.show(newVC, sender: self)
        }
    }
    
    @IBAction func character3Pressed(_ sender: Any) {
        if char3Info["created"]as?Bool == false {
            //segue to create char screen & pass buttonStates value
            //performSegue(withIdentifier: "createCharacter3", sender: nil)
            let newVC = self.storyboard?.instantiateViewController(withIdentifier: "createCharacter") as! CreateCharacterViewController
            newVC.charToCreate = "char3"
            self.show(newVC, sender: self)
            
        } else {
            //segue to char page
            //performSegue(withIdentifier: "char3Profile", sender: nil)
            //"characterProfile"
            let newVC = self.storyboard?.instantiateViewController(withIdentifier: "characterProfile") as! CharProfileViewController
            newVC.charID = "char3"
            self.show(newVC, sender: self)
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
        if char1Info["created"]as?Bool == true {
            character1.setImage( UIImage.init(named: "SarahLamAvatar"), for: .normal)
        }
        if char2Info["created"]as?Bool == true {
            character2.setImage( UIImage.init(named: "ZariaJonesAvatar"), for: .normal)
        }
        if char3Info["created"]as?Bool == true {
            character3.setImage( UIImage.init(named: "SergioGarciaAvatar"), for: .normal)
        }
    }
    

    
    override func viewDidAppear(_ animated: Bool) {
        char1Info =  defaults.object(forKey: "char1") as! [String : Any]
        char2Info =  defaults.object(forKey: "char2") as! [String : Any]
        char3Info =  defaults.object(forKey: "char3") as! [String : Any]
        if char1Info["created"]as?Bool == true {
            character1.setImage( UIImage.init(named: "SarahLamAvatar"), for: .normal)
        }
        if char2Info["created"]as?Bool == true {
            character2.setImage( UIImage.init(named: "ZariaJonesAvatar"), for: .normal)
        }
        if char3Info["created"]as?Bool == true {
            character3.setImage( UIImage.init(named: "SergioGarciaAvatar"), for: .normal)
        }
    }
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVC = segue.destination as? CreateCharacterViewController {
            if segue.identifier == "createCharacter1" {
                //nextVC.charToCreate = "char1"
            } else if segue.identifier == "createCharacter2" {
                nextVC.charToCreate = "char2"
            } else {
                nextVC.charToCreate = "char3"
            }
        }
    }*/
}
