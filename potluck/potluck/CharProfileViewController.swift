//
//  CharProfileViewController.swift
//  potluck
//
//  Created by Vedi Chaudhri on 11/21/19.
//  Copyright © 2019 Vedi Chaudhri. All rights reserved.
//

import UIKit

class CharProfileViewController: UIViewController {

    var charID = ""
    @IBOutlet var charAvatar: UIImageView!
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion:nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("@@@@@@@")
        print(charID)
        print("@@@@@@@")
        
        /*charAvatar.layer.cornerRadius = 50.0
        charAvatar.backgroundColor = UIColor.lightGray*/

//        let image : UIImage
        if charID == "char1" {
            self.charAvatar.image = #imageLiteral(resourceName: "onboarding3")
        } else if charID == "char2" {
            self.charAvatar.image = #imageLiteral(resourceName: "ZariaJonesAvatar")
        } else if charID == "char3" {
            self.charAvatar.image = #imageLiteral(resourceName: "SergioGarciaAvatar")
        } else if charID == "char4" {
            self.charAvatar.image = UIImage(named: "NelsonSandersAvatar")
        } else if charID == "char5" {
            self.charAvatar.image = UIImage(named: "SusisYongAvatar")
        } else if charID == "char6" {
            self.charAvatar.image = UIImage(named: "GeorgeTubbsAvatar")
        } else if charID == "char7" {
            self.charAvatar.image = UIImage(named: "MaryYuAvatar")
        } else if charID == "char8" {
            self.charAvatar.image = UIImage(named: "LarryWilsonAvatar")
        }
    
        // Do any additional setup after loading the view.
    }
    
    /*public func getCharID() -> String {
        return charID
    }*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
