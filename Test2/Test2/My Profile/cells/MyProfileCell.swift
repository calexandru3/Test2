//
//  MyProfileCell.swift
//  Test2
//
//  Created by Bogdan Marica on 03/12/2019.
//  Copyright © 2019 Florin Precup. All rights reserved.
//

import UIKit

class MyProfileCell: UITableViewCell {

    var profilemModel:ProfileStruct?{
        didSet{
            guard let model = profilemModel else {return}
            profileImage.image = model.image
            nameLabel.text = model.name
            adressLabel.text = model.adress
            descriptionTextView.text = model.description
        }
    }

    let profileImage:UIImageView = {
        let imageView = RoundedImageView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .clear
        imageView.contentMode = .scaleAspectFit

        return imageView
    }()

    let nameLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 18)

        return label
    }()

    let adressLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15)
        
        return label
    }()

    let descriptionTextView:UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isScrollEnabled = false
        textView.font = UIFont.italicSystemFont(ofSize: 15)
        textView.textAlignment = .center
        textView.isEditable = false
        
        return textView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style:style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        setUp()
    }

    fileprivate func setUp(){
        self.addSubview(profileImage)
        self.addSubview(nameLabel)
        self.addSubview(adressLabel)
        self.addSubview(descriptionTextView)

        profileImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        profileImage.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        profileImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        profileImage.heightAnchor.constraint(equalToConstant: 50).isActive = true

        nameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 10).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true

        adressLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 3).isActive = true
        adressLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 15).isActive = true
        adressLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true

        descriptionTextView.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 10).isActive = true
        descriptionTextView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
        descriptionTextView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -10).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
