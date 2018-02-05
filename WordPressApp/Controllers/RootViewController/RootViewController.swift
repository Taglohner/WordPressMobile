//
//  RootViewController.swift
//  WordPressApp
//
//  Created by Steven Taglohner on 31/01/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import UIKit


class RootViewController: UITableViewController {
    
    var postArray = [
        
        PostObject(title: "Office for Mac buying guide 2018", excerpt: "Everything you need to know about Office for Mac & which version you should buy", authorPicture: #imageLiteral(resourceName: "avatar")),
        PostObject(title: "MarioKart Tour for iOS release date, platforms and gameplay rumours", excerpt: "Here’s everything we know so far about MarioKart Tour, from the latest release date rumours to what we’d like to see from gameplay", authorPicture: #imageLiteral(resourceName: "avatar")),
        PostObject(title: "Best Mac email clients of 2018", excerpt: "Apple's Mail app is great, but sometimes we need something a little more... Feature rich. Here are some of the best alternatives", authorPicture: #imageLiteral(resourceName: "avatar")),
        PostObject(title: "How to use iOS 11 Settings on iPhone & iPad", excerpt: "Our comprehensive guide to the settings you need to know in iOS 11: personalise your iPhone or iPad to work the way you want it to", authorPicture: #imageLiteral(resourceName: "avatar")),
        PostObject(title: "Apple Q1 2018 financial results: Highest ever quarterly revenue", excerpt: "Apple has announced financial results for Q1 2018, its best ever quarter. Find out how many iPhones, iPads & Macs Apple sold", authorPicture: #imageLiteral(resourceName: "avatar")),
        PostObject(title: "iOS 11 update: latest version, problems, fixes & features", excerpt: "Everything you need to know about the new iOS 11, including the latest version, any issues, new features and compatible devices", authorPicture: #imageLiteral(resourceName: "avatar"))
    ]
    
    // MARK: Properties
    
    var topRefreshControl = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.refreshControl = topRefreshControl
        tableView.separatorStyle = .none
        tableView.sectionHeaderHeight = 28
        navigationController?.title = "RootViewController"
        tableView.register(FirstCell.self, forCellReuseIdentifier: "FirstCell")
        tableView.register(Header.self, forHeaderFooterViewReuseIdentifier: "RootHeader")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.estimatedRowHeight = 340
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        if topRefreshControl.isRefreshing {
            print("Refreshing")
        }
        topRefreshControl.endRefreshing()
    }
}
