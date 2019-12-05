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
//
//    let char1Info = [["LarryWilsonAvatar","Larry"], ["Character1QuestionPic1", "First Day"], ["Character4StoryPic1", "Grocery"]]
//    let char2Info = [["MaryYuAvatar", "Mary"], ["Character4StoryPic1", "Groc"], ["MaryYuAvatar", "Marss"] ]
    //let charInfo = [char1Info, char2Info]
    
    //TODO: prettify this!!!! fill with more relevant info!!
    let charInfo = [[["LarryWilsonAvatar","Larry"], ["Character1QuestionPic1", "First Day"], ["Character4StoryPic1", "Grocery"],["Character4StoryPic1", "Grocery"]], [["MaryYuAvatar", "Mary"], ["Character4StoryPic1", "Groc"], ["MaryYuAvatar", "Marss"], ["Character4StoryPic1", "Groc"]], [["NelsonSandersAvatar","Nelson"], ["apartment", "Housing crisis"], ["Character1StoryPic1", "New Foods"],["Character10StoryPic1", "Runner's Dilemna"]]]
    
    var sectionNum = 0
    
    // MARK:- table view delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1// charInfo.count //2
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return charInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        print("!!!!!!!!")
//        print("Section: " + String(indexPath.section) + " Row: " + String(indexPath.row) )
//        print("!!!!!!!!")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCVTVTableViewCell") as! ProfileCVTVTableViewCell
        //cell.tag = indexPath.section
        self.sectionNum = indexPath.section
//        cell.ProfileCVTVCollectionView =
        
        return cell
    }
    
//    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath)
//    {
//        guard let tableViewCell = cell as? ProfileCVTVTableViewCell else { return }
//        tableViewCell.setCollectionViewDataSourceDelegate(self, forRow: indexPath.row)
//    }
    
    // MARK:- collection view delegate
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let  num = self.sectionNum
        //index(ofAccessibilityElement: collectionView)
//        print("*********")
//        print("Section: " + String(indexPath.section) + " Row: " + String(indexPath.row) + " num: " + String(num))
//        print("*********")
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProfileCVTVCollectionViewCell", for: indexPath) as! ProfileCVTVCollectionViewCell
        cell.label.text = charInfo[self.sectionNum][indexPath.row][1]
        let imageName = charInfo[self.sectionNum][indexPath.row][0]
        cell.photo.image = UIImage.init(named: imageName) //UIImage.init(named: photos[indexPath.row])
        if indexPath.row == 0 {
            cell.photo.contentMode = .scaleAspectFit
            
        }
        
        return cell
    }
    

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorColor = UIColor.clear
        
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
