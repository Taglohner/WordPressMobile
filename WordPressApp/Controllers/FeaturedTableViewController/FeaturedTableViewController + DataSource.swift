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
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeaturedFirstCell", for: indexPath) as! FeaturedTableViewCell

        return cell
    }
    

}
