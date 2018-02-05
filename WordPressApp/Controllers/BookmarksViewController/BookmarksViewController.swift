//
//  BookmarksViewController.swift
//  UITabBarController Programmatically
//
//  Created by Steven Taglohner on 29/01/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import UIKit

class BookmarksViewController: UITableViewController {
    
    var postArray = [
        
        PostObject(title: "Office for Mac buying guide 2018", excerpt: "Everything you need to know about Office for Mac & which version you should buy", postPicture: #imageLiteral(resourceName: "Post1"), authorName: "Steven Taglöhner", authorPicture: #imageLiteral(resourceName: "Steven"), postDate: "Today"),
        PostObject(title: "MarioKart Tour for iOS release date, platforms and gameplay rumours", excerpt: "Here’s everything we know so far about MarioKart Tour, from the latest release date rumours to what we’d like to see from gameplay", postPicture: #imageLiteral(resourceName: "Post2"), authorName: "Konrad Taglöhner", authorPicture: #imageLiteral(resourceName: "Konrad"), postDate: "Yesterday"),
        PostObject(title: "Best Mac email clients of 2018", excerpt: "Apple's Mail app is great, but sometimes we need something a little more... Feature rich. Here are some of the best alternatives", postPicture: #imageLiteral(resourceName: "Post3"), authorName: "Susan S Kim", authorPicture: #imageLiteral(resourceName: "Susan"), postDate: "03/02/2018"),
        PostObject(title: "How to use iOS 11 Settings on iPhone & iPad", excerpt: "Our comprehensive guide to the settings you need to know in iOS 11: personalise your iPhone or iPad to work the way you want it to", postPicture: #imageLiteral(resourceName: "Post4"), authorName: "Steven Taglöhner", authorPicture: #imageLiteral(resourceName: "Steven"), postDate: "28/01/2018"),
        PostObject(title: "Apple Q1 2018 financial results: Highest ever quarterly revenue", excerpt: "Apple has announced financial results for Q1 2018, its best ever quarter. Find out how many iPhones, iPads & Macs Apple sold", postPicture: #imageLiteral(resourceName: "Post5"), authorName: "Milena Bonfim", authorPicture: #imageLiteral(resourceName: "avatar"), postDate: "14/01/2018"),
        PostObject(title: "iOS 11 update: latest version, problems, fixes & features", excerpt: "Everything you need to know about the new iOS 11, including the latest version, any issues, new features and compatible devices", postPicture: #imageLiteral(resourceName: "Post6"), authorName: "Brenda Cariz", authorPicture: #imageLiteral(resourceName: "Elvis"), postDate: "29/12/2017")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Bookmarks"
        
        tableView.register(BookmarksFirstCell.self, forCellReuseIdentifier: "BookmarksFirstCell")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookmarksFirstCell", for: indexPath) as! BookmarksFirstCell
        cell.post = postArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 76
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // DO SOMETHING
    }
}

