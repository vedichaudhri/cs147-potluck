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
    
    @IBAction func searchButtonPressed(_ sender: Any) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "SearchViewController") as! SearchViewController
        self.show(newVC, sender: self)
    }
    
    // MARK:- table view delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //TODO: edit based on "search view"
        let cell = tableView.dequeueReusableCell(withIdentifier: "CVTVTableViewCell") as! CVTVTableViewCell
        
        return cell
    }
    
    // MARK:- collection view delegate
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CVTVCollectionViewCell", for: indexPath) as! CVTVCollectionViewCell
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchView = defaults.object(forKey: "searchView") as! String
        // Do any additional setup after loading the view, typically from a nib.
    }


}

