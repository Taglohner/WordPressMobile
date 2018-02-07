//
//  MoreCollectionViewController + DelegateFlowLayout.swift
//  WordPressApp
//
//  Created by Steven Taglohner on 06/02/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import UIKit

extension MoreCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemWidth = (view.frame.width / 2) - 15
        let itemHeight = itemWidth
        return CGSize(width: itemWidth, height: itemHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsetsMake(10, 10, 10, 10)
    }
}
