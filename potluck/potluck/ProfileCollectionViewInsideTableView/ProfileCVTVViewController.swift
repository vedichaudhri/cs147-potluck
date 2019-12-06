//
//  CVTVViewController.swift
//  potluck
//
//  Created by Vedi Chaudhri on 12/4/19.
//  Copyright © 2019 Vedi Chaudhri. All rights reserved.
//

import UIKit

class ProfileCVTVViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let defaults = UserDefaults.standard
    
    let lock = NSLock()
    
    //TODO: prettify this!!!! fill with more relevant info!!
    let charInfo = [[["LarryWilsonAvatar","Larry"], ["Character1QuestionPic1", "Negotiate salary"], ["art", "Art classes"],["Character4StoryPic1", "Groceries"]], [["MaryYuAvatar", "Mary"], ["kimchi", "Home cooking"], ["airport", "Visiting Korea"], ["apartment", "Housing crisis"]], [["NelsonSandersAvatar","Nelson"], ["school", "Son's school"], ["passport", "Renew passport"], ["Character1StoryPic1", "New foods"]]]
    
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
        lock.lock()
        self.sectionNum = indexPath.section
//        cell.ProfileCVTVCollectionView =
        
        return cell
    }
 
    /*func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "characterProfile") as! CharProfileViewController
        if indexPath.section == 0 {
            newVC.charID = "char8"
            defaults.set("char8", forKey: "charToView")
        } else if indexPath.section == 1 {
            newVC.charID = "char7"
            defaults.set("char7", forKey: "charToView")
        } else if indexPath.section == 2 {
            newVC.charID = "char4"
            defaults.set("char4", forKey: "charToView")
        }
        self.show(newVC, sender: self)
    }*/
    
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
        cell.tag = self.sectionNum
        let imageName = charInfo[self.sectionNum][indexPath.row][0]
        cell.photo.image = UIImage.init(named: imageName) //UIImage.init(named: photos[indexPath.row])
        if indexPath.row == 0 {
            cell.photo.contentMode = .scaleAspectFit
        }
        lock.unlock()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        /*print("********")
        print(indexPath.section)
        print(indexPath.row)
        print(collectionView.cellForItem(at: indexPath)?.tag)
        print("*******")*/
        let cellTag = collectionView.cellForItem(at: indexPath)?.tag
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "characterProfile") as! CharProfileViewController
        if cellTag == 0 {
            newVC.charID = "char8"
            defaults.set("char8", forKey: "charToView")
        } else if cellTag == 1 {
            newVC.charID = "char7"
            defaults.set("char7", forKey: "charToView")
        } else if cellTag == 2 {
            newVC.charID = "char4"
            defaults.set("char4", forKey: "charToView")
        }
        self.show(newVC, sender: self)
    }
    

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorColor = UIColor.clear
        UserDefaults.standard.set("immigration", forKey: "searchView")
        
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
