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
        rootViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        
        let bookmarksViewController = BookmarksViewController()
        bookmarksViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        
        let moreCollectionViewController = MoreCollectionViewController()
        moreCollectionViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 2)
        
        let viewControllerList = [rootViewController, bookmarksViewController, moreCollectionViewController]
        
        viewControllers = viewControllerList.map {
            UINavigationController(rootViewController: $0)
        }
    }
}
