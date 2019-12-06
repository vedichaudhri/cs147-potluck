//
//  SecondViewController.swift
//  potluck
//
//  Created by Vedi Chaudhri on 11/6/19.
//  Copyright © 2019 Vedi Chaudhri. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let defaults = UserDefaults.standard
    var searchView = "immigration"
    
    //TODO: prettify this!!!
    let immigrationInfo = [[["ToddCheckAvatar","Todd"], ["books", "International books"], ["burnout", "Work burnout"],["visa", "Travel visa"]], [["SusisYongAvatar", "Susie"], ["immigration", "Immigration process"], ["finance", "Personal finance"], ["grad", "PhD programs"]], [["GeorgeTubbsAvatar","George"], ["travel", "Travel tips"], ["job", "Help with job search"],["health", "Health insurance"]]]
    
    let workInfo = [[["LarryWilsonAvatar","Larry"], ["Character1QuestionPic1", "Negotiate salary"], ["art", "Art classes"],["Character4StoryPic1", "Groceries"]], [["MaryYuAvatar", "Mary"], ["kimchi", "Home cooking"], ["airport", "Visiting Korea"], ["apartment", "Housing crisis"]], [["NelsonSandersAvatar","Nelson"], ["school", "Son's school"], ["passport", "Renew passport"], ["Character1StoryPic1", "New foods"]]]
    
    // after search
    let charInfoAfter = [[["LarryWilsonAvatar","Larry"], ["Character1QuestionPic1", "Negotiate salary"], ["art", "Art classes"],["Character4StoryPic1", "Groceries"]], [["MaryYuAvatar", "Mary"], ["kimchi", "Home cooking"], ["airport", "Visiting Korea"], ["apartment", "Housing crisis"]], [["NelsonSandersAvatar","Nelson"], ["school", "Son's school"], ["passport", "Renew passport"], ["Character1StoryPic1", "New foods"]]]
    
    var sectionNum = 0
    let lock = NSLock()
    
    @IBAction func searchButtonPressed(_ sender: Any) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "SearchViewController") as! SearchViewController
        self.show(newVC, sender: self)
    }
    @IBOutlet weak var tableView: UITableView!
    
    // MARK:- table view delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if searchView == "immigration" {
            return immigrationInfo.count
        } else {
            return workInfo.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //TODO: edit based on "search view"
        
        //        print("!!!!!!!!")
        //        print("Section: " + String(indexPath.section) + " Row: " + String(indexPath.row) )
        //        print("!!!!!!!!")
        let cell = tableView.dequeueReusableCell(withIdentifier: "CVTVTableViewCell") as! CVTVTableViewCell
        lock.lock()
        self.sectionNum = indexPath.section
        return cell
    }
    
    // MARK:- collection view delegate
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //        let  num = self.sectionNum
        //index(ofAccessibilityElement: collectionView)
        //        print("*********")
        //        print("Section: " + String(indexPath.section) + " Row: " + String(indexPath.row) + " num: " + String(num))
        //        print("*********")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CVTVCollectionViewCell", for: indexPath) as! CVTVCollectionViewCell
        if searchView == "immigration" {
            cell.label.text = immigrationInfo[self.sectionNum][indexPath.row][1]
            let imageName = immigrationInfo[self.sectionNum][indexPath.row][0]
            cell.photo.image = UIImage.init(named: imageName)
            if indexPath.row == 0 {
                cell.photo.contentMode = .scaleAspectFit
            }
        } else {
            cell.label.text = workInfo[self.sectionNum][indexPath.row][1]
            let imageName = workInfo[self.sectionNum][indexPath.row][0]
            cell.photo.image = UIImage.init(named: imageName)
            if indexPath.row == 0 {
                cell.photo.contentMode = .scaleAspectFit
            }
        }
        lock.unlock()
        return cell
    }
    
    @IBOutlet weak var workContainerView: UIView!
    
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        workContainerView.isHidden = true
        label2.isHidden = true
        label1.isHidden = true
        image1.isHidden = true
        image2.isHidden = true
        print("@@@@@@@")
        print(defaults.object(forKey: "searchView"))
        print("@@@@@@@")
        searchView = defaults.object(forKey: "searchView") as! String
        tableView.separatorColor = UIColor.clear
        
    }
    
    /*override func viewWillAppear(_ animated: Bool) {
        print("^^^^^^^")
        print(defaults.object(forKey: "searchView"))
        print("^^^^^^^")
        searchView = defaults.object(forKey: "searchView") as! String
        tableView.reloadData()
    }*/
    
    override func viewDidAppear(_ animated: Bool) {
        print("^^^^^^^")
        print(defaults.object(forKey: "searchView"))
        print("^^^^^^^")
        searchView = defaults.object(forKey: "searchView") as! String
        //tableView.reloadData()
        /*if self.searchView == "immigration" {
            self.tableView.isHidden = false
            self.workContainerView.isHidden = true
            self.label2.isHidden = true
            self.label1.isHidden = true
            self.image1.isHidden = true
            self.image2.isHidden = true
        }*/
        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
            //Here call your function
            //If you want to do changes in UI use this
            DispatchQueue.main.async(execute: {
                //Update UI
                self.searchView = self.defaults.object(forKey: "searchView") as! String
                if self.searchView == "work" {
                    self.tableView.isHidden = true
                    self.workContainerView.isHidden = false
                    self.label2.isHidden = false
                    self.label1.isHidden = false
                    self.image1.isHidden = false
                    self.image2.isHidden = false
                    
                } else {
                    self.tableView.isHidden = false
                    self.workContainerView.isHidden = true
                    self.label2.isHidden = true
                    self.label1.isHidden = true
                    self.image1.isHidden = true
                    self.image2.isHidden = true
                }
            })
        }
        
    }

   
    
}

