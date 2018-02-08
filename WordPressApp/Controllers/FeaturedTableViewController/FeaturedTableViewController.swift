//
//  FeaturedTableViewController.swift
//  WordPressApp
//
//  Created by Steven Taglohner on 07/02/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import UIKit

class FeaturedTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(FeaturedTableViewCell.self, forCellReuseIdentifier: "FeaturedFirstCell")
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    
}

