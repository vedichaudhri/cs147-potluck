//
//  FollowingStoriesViewController.swift
//  potluck
//
//  Created by Vedi Chaudhri on 12/4/19.
//  Copyright © 2019 Vedi Chaudhri. All rights reserved.
//

import UIKit

class FollowingStoriesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var charName: UILabel!
    
    @IBOutlet weak var storyTitle: UILabel!
    
    @IBOutlet weak var storyText: UILabel!
    
    @IBOutlet weak var charImage: UIImageView!
    
    @IBOutlet weak var storyImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

class FollowingStoriesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let charNames: [String] = ["Nelson", "Mary", "George"]
    let charImages: [String] = ["NelsonSandersAvatar", "MaryYuAvatar", "GeorgeTubbsAvatar"]
    let storyTitles: [String] = ["Made time to prioritize myself", "Finding affordable housing in new city", "Getting ready for the race of a lifetime"]
    let storyTexts: [String] = ["I think a common pitfall of the immigrant experience is that people work so incredibly hard to fit in, but then overlook themselves...", "I recently moved to a new city to be closer to my parents, who are elderly and speak limited English...", "Being an athlete certainly hasn't been easy. After moving to a big city, I've been having a harder time finding places to train..."]
    let storyImages: [String] = ["Character1StoryPic1", "apartment", "Character10StoryPic1"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FollowingStoriesTableViewCell") as! FollowingStoriesTableViewCell
        cell.charName.text = charNames[indexPath.section]
        cell.charImage.image = UIImage.init(named: charImages[indexPath.section])
        cell.storyTitle.text = storyTitles[indexPath.section]
        cell.storyText.text = storyTexts[indexPath.section]
        cell.storyImage.image = UIImage.init(named: storyImages[indexPath.section])
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        followingStoriesTableView.reloadData()

        // Do any additional setup after loading the view.
//        followingStoriesTableView.delegate = self
//        followingStoriesTableView.dataSource = self
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
