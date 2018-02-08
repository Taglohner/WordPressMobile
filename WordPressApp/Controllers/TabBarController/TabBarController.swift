//
//  TabBarController.swift
//  UITabBarController Programmatically
//
//  Created by Steven Taglohner on 29/01/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rootViewController = RootViewController()
        rootViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .mostViewed, tag: 0)
        
        let featuredTableViewController = FeaturedTableViewController()
        featuredTableViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 1)
        
        let bookmarksViewController = BookmarksViewController()
        bookmarksViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 2)
        
        let moreCollectionViewController = MoreCollectionViewController()
        moreCollectionViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 3)
        
        let viewControllerList = [rootViewController, featuredTableViewController, bookmarksViewController, moreCollectionViewController]
        
        viewControllers = viewControllerList.map {
            UINavigationController(rootViewController: $0)
        }
    }
}
