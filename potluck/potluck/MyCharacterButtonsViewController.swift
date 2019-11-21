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
    var buttonStates: [String:[ String:Bool]] = [:]
    let defaults = UserDefaults.standard
   
    @IBAction func character1Pressed(_ sender: Any) {
        
            if (buttonStates["character1"]?["created"] == false) {
                //segue to create char screen & pass buttonStates value
                
            } else {
                //segue to char page
            }
        
    }
    
    @IBAction func character2Pressed(_ sender: Any) {
        if (buttonStates["character2"]?["created"] == false) {
            //segue to create char screen & pass buttonStates value
            
        } else {
            //segue to char page
        }
    }
    
    @IBAction func character3Pressed(_ sender: Any) {
        if (buttonStates["character3"]?["created"] == false) {
            //segue to create char screen & pass buttonStates value
            
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
        buttonStates =  defaults.object(forKey: "buttonStates") as! [String : [String : Bool]]
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
       
    }


}
