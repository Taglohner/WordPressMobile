//
//  MoreCollectionViewCell.swift
//  WordPressApp
//
//  Created by Steven Taglohner on 06/02/2018.
//  Copyright © 2018 Steven Taglohner. All rights reserved.
//

import UIKit

class MoreCollectionViewCell: UICollectionViewCell {
    
    var post: PostObject? {
        didSet {
            
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupLayout() {
        
    }
    
}
