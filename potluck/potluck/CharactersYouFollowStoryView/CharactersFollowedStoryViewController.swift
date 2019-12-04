//
//  CharactersFollowedStoryViewController.swift
//  potluck
//
//  Created by Vedi Chaudhri on 12/4/19.
//  Copyright © 2019 Vedi Chaudhri. All rights reserved.
//

import UIKit

class CharactersFollowedStoryCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var charImage: UIImageView!
    @IBOutlet weak var charName: UILabel!
}

class CharactersFollowedStoryViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let charNames: [String] = ["Susie", "Todd", "Nelson", "Larry", "Mary", "George"]
    let charImages: [String] = ["SusisYongAvatar", "ToddCheckAvatar", "NelsonSandersAvatar", "LarryWilsonAvatar", "MaryYuAvatar", "GeorgeTubbsAvatar"]
      
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CharactersFollowedStoryCollectionViewCell", for: indexPath) as! CharactersFollowedStoryCollectionViewCell
        cell.charName.text = charNames[indexPath.row]
        cell.charImage.image = UIImage.init(named:charImages[indexPath.row])
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
