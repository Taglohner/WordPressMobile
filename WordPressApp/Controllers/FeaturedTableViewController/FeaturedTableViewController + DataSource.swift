//
//  FeaturedTableViewController + DataSource.swift
//  WordPressApp
//
//  Created by Steven Taglohner on 07/02/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import UIKit

extension FeaturedTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = categories?.count {
            return count
        }  else {
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
//        if indexPath.item == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FeaturedFirstCell", for: indexPath) as! FeaturedTableCollectionViewCell
            return cell
//        }
//
//        if post.isFeatured == false {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "BaseCell", for: indexPath) as! BaseTableViewCell
//            return cell
//        }
        
//        return UITableViewCell()
    }
    

}
