//
//  FeaturedCollectionViewCell.swift
//  WordPressApp
//
//  Created by Steven Taglohner on 08/02/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import UIKit

class FeaturedCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        backgroundColor = .red
    }
}
