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
    let charInfo = [[["ToddCheckAvatar","Todd"], ["books", "International books"], ["burnout", "Work burnout"],["visa", "Travel visa"]], [["SusisYongAvatar", "Susie"], ["immigration", "Immigration process"], ["finance", "Personal finance"], ["grad", "PhD programs"]], [["GeorgeTubbsAvatar","George"], ["travel", "Travel tips"], ["job", "Help with job search"],["health", "Health insurance"]]]
    
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
        return charInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //TODO: edit based on "search view"
        let cell = tableView.dequeueReusableCell(withIdentifier: "CVTVTableViewCell") as! CVTVTableViewCell
        lock.lock()
        sectionNum = indexPath.section
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CVTVCollectionViewCell", for: indexPath) as! CVTVCollectionViewCell
        cell.label.text = charInfo[self.sectionNum][indexPath.row][1]
        let imageName = charInfo[self.sectionNum][indexPath.row][0]
        cell.photo.image = UIImage.init(named: imageName)
        if indexPath.row == 0 {
            cell.photo.contentMode = .scaleAspectFit
            
        }
        lock.unlock()
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchView = defaults.object(forKey: "searchView") as! String
        tableView.separatorColor = UIColor.clear
        // Do any additional setup after loading the view, typically from a nib.
        

    }

   
    
}

