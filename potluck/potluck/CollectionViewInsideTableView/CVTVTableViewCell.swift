//
//  CVTVTableViewCell.swift
//  potluck
//
//  Created by Vedi Chaudhri on 12/4/19.
//  Copyright © 2019 Vedi Chaudhri. All rights reserved.
//

import UIKit

class CVTVTableViewCell: UITableViewCell {
    @IBOutlet weak var CVTVCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension CVTVTableViewCell {
    
    func setCollectionViewDataSourceDelegate <D: UICollectionViewDelegate & UICollectionViewDataSource> (_ dataSourceDelegate: D, forRow row:Int){
        CVTVCollectionView.delegate = dataSourceDelegate
        CVTVCollectionView.dataSource = dataSourceDelegate
        
        CVTVCollectionView.reloadData()
    }
    
}
