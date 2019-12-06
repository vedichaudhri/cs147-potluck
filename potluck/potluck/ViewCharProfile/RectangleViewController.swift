//
//  RectangleViewController.swift
//  potluck
//
//  Created by Vedi Chaudhri on 11/21/19.
//  Copyright © 2019 Vedi Chaudhri. All rights reserved.
//

import UIKit

class timelineTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var storyDescription: UILabel!
    
    @IBOutlet weak var storyImage: UIImageView!
}

class RectangleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (charInfo["timeline"] as! [[String]]).count 
    }
    
    let defaults = UserDefaults.standard
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "timelineCell") as! timelineTableViewCell
        let charTimeline = charInfo["timeline"] as! [[String]]
        cell.titleLabel.text = charTimeline[0][0]
        cell.storyDescription.text = charTimeline[0][1]
        cell.storyImage.image = UIImage(named: charTimeline[0][2])
        return cell
    }
    
    var charName: String = "char1"
    var charInfo : [String:Any] = [:] //defaults.object(forKey: charName) as! [String : Any]
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var aboutDescription: UITextView!
    @IBOutlet weak var tellAStroyDescription: UITextView!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var timelineTableView: UITableView!
    
    
    @IBAction func addButtonPressed(_ sender: Any) {
        
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "addStoryVC") as! AddStoryViewController
        
        self.show(newVC, sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        charName = defaults.string(forKey: "charToView")!
        charInfo = defaults.object(forKey: charName) as! [String : Any]
        nameLabel.text = charInfo["firstName"] as! String + " " + (charInfo["lastName"] as! String)
        aboutLabel.text = "About " + (charInfo["firstName"] as! String)
        aboutDescription.text = charInfo["bio"] as? String
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
