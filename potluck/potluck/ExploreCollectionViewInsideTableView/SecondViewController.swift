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
    let charInfo = [[["LarryWilsonAvatar","Larry"], ["Character1QuestionPic1", "First Day"], ["Character4StoryPic1", "Grocery"],["Character4StoryPic1", "Grocery"]], [["MaryYuAvatar", "Mary"], ["Character4StoryPic1", "Groc"], ["MaryYuAvatar", "Marss"], ["Character4StoryPic1", "Groc"]], [["NelsonSandersAvatar","Nelson"], ["apartment", "Housing crisis"], ["Character1StoryPic1", "New Foods"],["Character10StoryPic1", "Runner's Dilemna"]]]
    
    var sectionNum = 0
    
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
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchView = defaults.object(forKey: "searchView") as! String
        tableView.separatorColor = UIColor.clear
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    
}

