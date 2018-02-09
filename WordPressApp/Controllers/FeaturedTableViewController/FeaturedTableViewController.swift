//
//  FeaturedTableViewController.swift
//  WordPressApp
//
//  Created by Steven Taglohner on 07/02/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import UIKit

class FeaturedTableViewController: UITableViewController {
    
    var categories: [Category]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categories = Category.sampleCategories()
        
        tableView.register(FeaturedTableCollectionViewCell.self, forCellReuseIdentifier: "FeaturedFirstCell")
        tableView.register(BaseTableViewCell.self, forCellReuseIdentifier: "BaseCell")
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    
}

