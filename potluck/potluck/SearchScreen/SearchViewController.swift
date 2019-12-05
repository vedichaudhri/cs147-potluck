//
//  SearchViewController.swift
//  potluck
//
//  Created by Vedi Chaudhri on 12/4/19.
//  Copyright © 2019 Vedi Chaudhri. All rights reserved.
//

import UIKit


class SearchViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let defaults = UserDefaults.standard
    let tableViewData = ["How to deal with the immigration office?", "Staying in touch with lost relatives", "Misunderstood at work"]
    var showSearch: Bool = false
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewData.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Recent Searches"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = searchTableView.dequeueReusableCell(withIdentifier: "searchCell", for:indexPath)
        
        cell.textLabel?.text = tableViewData[indexPath.row]
        cell.detailTextLabel?.text = "x"
        
        //cell.detailTextLabel?.textColor = UIColor(named: "grey")
        return cell
        //return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        defaults.set("work", forKey: "searchView")
        self.dismiss(animated: true, completion:nil)
    }
    

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTableView.delegate = self
        searchTableView.dataSource = self
        //searchBar.delegate = self as! UISearchBarDelegate
    searchTableView.register(UITableViewCell.self, forCellReuseIdentifier: "searchCell")
        searchTableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        searchTableView.separatorColor = UIColor.clear
        searchTableView.tableHeaderView?.backgroundColor = UIColor.white
        //searchTableView.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        searchTableView.isHidden = false
        searchBar.showsCancelButton = false
        
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        // searchForOpportunities()
        searchTableView.isHidden = false
        searchBar.showsCancelButton = false
    }
    
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        //searchTableView.isHidden = true
        self.dismiss(animated: true, completion:nil)
    }
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion:nil)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //searchTableView.isHidden = true
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }*/
 

}
