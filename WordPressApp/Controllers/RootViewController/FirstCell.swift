//
//  FirstCell.swift
//  CodedTableView
//
//  Created by Steven Taglohner on 15/12/2017.
//  Copyright © 2017 Steven Taglohner. All rights reserved.
//

import UIKit

class FirstCell: UITableViewCell {
    
    var post: PostObject? {
        didSet {
            guard let post = post else {
                return
            }
            titleLabel.text = post.title
            excerptLabel.text = post.excerpt
            
            let picture = UIImage(named: "avatar")
            profileImage.image = picture
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = .none
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let backGroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 10
        return view
    }()
    
    let mainImage: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .yellow
        imageView.layer.cornerRadius = 10
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let labelView = UILabel()
//        labelView.backgroundColor = .lightGray
        labelView.textAlignment = .natural
        labelView.font = .boldSystemFont(ofSize: 16)
        labelView.text = "Lorem lipsum"
        labelView.numberOfLines = 2
        return labelView
    }()
    
    let excerptLabel: UILabel = {
        let labelView = UILabel()
        labelView.backgroundColor = .lightGray
        labelView.textAlignment = .natural
        labelView.font = .systemFont(ofSize: 16)
        labelView.numberOfLines = 4
        labelView.text = "Lorem lipsum Lorem lipsum Lorem lipsum Lorem lipsum Lorem lipsum Lorem lipsum"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    let authorLabel: UILabel = {
        let labelView = UILabel()
//        labelView.backgroundColor = .lightGray
        labelView.textAlignment = .justified
        labelView.font = .systemFont(ofSize: 12)
        labelView.text = "Steven Taglohner"
        labelView.translatesAutoresizingMaskIntoConstraints = false
        return labelView
    }()
    
    let profileImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "avatar")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 20
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    func setupViews() {
        
        addSubview(backGroundView)
        [mainImage, titleLabel, excerptLabel, profileImage, authorLabel ].forEach { backGroundView.addSubview($0) }
        
        backGroundView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 2, left: 4, bottom: 2, right: 4))
        mainImage.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 10, left: 8, bottom: 8, right: 8), size: .init(width: 0, height: 160))
        titleLabel.anchor(top: mainImage.bottomAnchor, leading: mainImage.leadingAnchor, bottom: excerptLabel.topAnchor, trailing: mainImage.trailingAnchor, padding: .init(top: 4, left: 0, bottom: 4, right: 0))
        excerptLabel.anchor(top: titleLabel.bottomAnchor, leading: mainImage.leadingAnchor, bottom: profileImage.topAnchor, trailing: mainImage.trailingAnchor, padding: .init(top: 4, left: 0, bottom: 4, right: 0))
        profileImage.anchor(top: excerptLabel.bottomAnchor, leading: mainImage.leadingAnchor, bottom: bottomAnchor, trailing: nil, padding: .init(top: 4, left: 0, bottom: 4, right: 0), size: .init(width: 40, height: 40))
        authorLabel.anchor(top: profileImage.topAnchor, leading: profileImage.trailingAnchor, bottom: profileImage.bottomAnchor, trailing: mainImage.trailingAnchor, padding: .init(top: 0, left: 4, bottom: 0, right: 0))
    }
}





