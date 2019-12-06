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
    
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let charNames: [String] = ["Susie", "Nelson", "Larry", "Mary", "George"]
    let charImages: [String] = ["SusisYongAvatar", "NelsonSandersAvatar", "LarryWilsonAvatar", "MaryYuAvatar", "GeorgeTubbsAvatar"]
      
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CharactersFollowedStoryCollectionViewCell", for: indexPath) as! CharactersFollowedStoryCollectionViewCell
        cell.charName.text = charNames[indexPath.row]
        cell.charImage.image = UIImage.init(named:charImages[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 || indexPath.row == 1 {
            let newVC = self.storyboard?.instantiateViewController(withIdentifier: "characterProfile") as! CharProfileViewController
            if indexPath.row == 0 {
                newVC.charID = "char5"
                defaults.set("char5", forKey: "charToView")
            } else if indexPath.row == 1 {
                newVC.charID = "char4"
                defaults.set("char4", forKey: "charToView")
            }
            self.show(newVC, sender: self)
        }
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
