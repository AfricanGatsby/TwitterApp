//
//  TweerTableViewCell.swift
//  TwitterClone
//
//  Created by Yusuf Yahya on 27/09/2024.
//

import UIKit

class TweerTableViewCell: UITableViewCell {

  static let identifier = "TweerTableViewCell"
    
    private let avatarImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 25
        imageView.layer.masksToBounds = true
        imageView.clipsToBounds = true
        imageView.image = UIImage(systemName: "person")
        imageView.backgroundColor = .red
        return imageView
        
    }()
    
    private let displayName : UILabel = {
        let label = UILabel()
        label.text = "Yusuf"
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let usernameLabel : UILabel = {
        let label = UILabel()
        label.text = "@Yusuf"
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let tweetTextContentLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "This is my Mockup tweet. It is going to take multiple lines. I believe some nore text is enough but lets add some more anyway...cheers!!!"
        label.numberOfLines = 0
       
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(avatarImageView)
        contentView.addSubview(displayName)
        contentView.addSubview(usernameLabel)
        contentView.addSubview(tweetTextContentLabel)
        configureConstraints()
    }
    
    private func configureConstraints() {
        let avatarImageConstraints = [
            avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 14),
            avatarImageView.heightAnchor.constraint(equalToConstant: 50),
            avatarImageView.widthAnchor.constraint(equalToConstant: 50)
        
        ]
        
        let displayNameLabelConstraints = [
            displayName.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 20),
            displayName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20)
        ]
        
        let usernameLabelConstraints = [
            usernameLabel.leadingAnchor.constraint(equalTo: displayName.trailingAnchor, constant: 10),
            usernameLabel.centerYAnchor.constraint(equalTo: displayName.centerYAnchor)
        ]
        
        let tweetTextContelabelConstraints = [
            tweetTextContentLabel.leadingAnchor.constraint(equalTo: displayName.leadingAnchor),
            tweetTextContentLabel.topAnchor.constraint(equalTo: displayName.bottomAnchor, constant: 10),
            tweetTextContentLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            tweetTextContentLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15)
          
        
        ]
        
        
        NSLayoutConstraint.activate(avatarImageConstraints)
        NSLayoutConstraint.activate(displayNameLabelConstraints)
        NSLayoutConstraint.activate(usernameLabelConstraints)
        NSLayoutConstraint.activate(tweetTextContelabelConstraints)
    }
    
    
    required init(coder: NSCoder) {
        fatalError()
    }
    

}
