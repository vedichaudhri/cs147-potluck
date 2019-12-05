//
//  CVTVViewController.swift
//  potluck
//
//  Created by Vedi Chaudhri on 12/4/19.
//  Copyright © 2019 Vedi Chaudhri. All rights reserved.
//

import UIKit

class ProfileCVTVViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let photos = ["LarryWilsonAvatar", "Character1QuestionPic1", ""]
    
    let labels = ["Larry", "First Day", ""]
    
//    let photos2 = ["MaryYuAvatar", "Character4StoryPic1", ""]
//
//    let labels2 = ["Mary", "Grocery Shopping", "Making Kimchi"]
//
//    let photos3 =  ["ToddCheckAvatar", "", ""]
//
//    let labels3 = ["Todd", "", ""]
    
    // MARK:- table view delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCVTVTableViewCell") as! ProfileCVTVTableViewCell
        
//        cell.ProfileCVTVCollectionView =
        
        return cell
    }
    
    // MARK:- collection view delegate
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProfileCVTVCollectionViewCell", for: indexPath) as! ProfileCVTVCollectionViewCell
        cell.label.text = labels[indexPath.row]
        cell.photo.image = UIImage.init(named: photos[indexPath.row])
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
