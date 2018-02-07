//
//  MoreCollectionViewController.swift
//  WordPressApp
//
//  Created by Steven Taglohner on 06/02/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import UIKit

class MoreCollectionViewController: UIViewController, UICollectionViewDataSource {
    
    // MARK: Properties
    
    var collectionView: UICollectionView!
    
    var postArray = [
        
        PostObject(title: "Office for Mac buying guide 2018", excerpt: "Everything you need to know about Office for Mac & which version you should buy", postPicture: #imageLiteral(resourceName: "Post1"), authorName: "Steven Taglöhner", authorPicture: #imageLiteral(resourceName: "Steven"), postDate: "Today"),
        PostObject(title: "MarioKart Tour for iOS release date, platforms and gameplay rumours", excerpt: "Here’s everything we know so far about MarioKart Tour, from the latest release date rumours to what we’d like to see from gameplay", postPicture: #imageLiteral(resourceName: "Post2"), authorName: "Konrad Taglöhner", authorPicture: #imageLiteral(resourceName: "Konrad"), postDate: "Today"),
        PostObject(title: "Best Mac email clients of 2018", excerpt: "Apple's Mail app is great, but sometimes we need something a little more... Feature rich. Here are some of the best alternatives", postPicture: #imageLiteral(resourceName: "Post3"), authorName: "Susan S Kim", authorPicture: #imageLiteral(resourceName: "Susan"), postDate: "03/02/2018"),
        PostObject(title: "How to use iOS 11 Settings on iPhone & iPad", excerpt: "Our comprehensive guide to the settings you need to know in iOS 11: personalise your iPhone or iPad to work the way you want it to", postPicture: #imageLiteral(resourceName: "Post4"), authorName: "Steven Taglöhner", authorPicture: #imageLiteral(resourceName: "Steven"), postDate: "28/01/2018"),
        PostObject(title: "Apple Q1 2018 financial results: Highest ever quarterly revenue", excerpt: "Apple has announced financial results for Q1 2018, its best ever quarter. Find out how many iPhones, iPads & Macs Apple sold", postPicture: #imageLiteral(resourceName: "Post5"), authorName: "Milena Bonfim", authorPicture: #imageLiteral(resourceName: "avatar"), postDate: "14/01/2018"),
        PostObject(title: "iOS 11 update: latest version, problems, fixes & features", excerpt: "Everything you need to know about the new iOS 11, including the latest version, any issues, new features and compatible devices", postPicture: #imageLiteral(resourceName: "Post6"), authorName: "Brenda Cariz", authorPicture: #imageLiteral(resourceName: "Elvis"), postDate: "29/12/2017")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the collection view layout
        
        let layout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        self.collectionView!.register(MoreCollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        view.addSubview(collectionView)
        
        // Setup collection view view properties
        
        collectionView.backgroundColor = .clear
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return postArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MoreCollectionViewCell
        cell.post = postArray[indexPath.item]
        cell.backgroundColor = .orange
        return cell
    }
    

 

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
