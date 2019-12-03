//
//  FirendsCell.swift
//  Test2
//
//  Created by Bogdan Marica on 03/12/2019.
//  Copyright © 2019 Florin Precup. All rights reserved.
//

import UIKit

class FirendsCell: UITableViewCell {

    var profilemModel:ProfileStruct?{
        didSet{
            guard let model = profilemModel else {return}
            profileImage.image = model.image
            nameLabel.text = model.name
            adressLabel.text = model.adress
            descriptionLabel.text = model.description
            setUp()
        }
    }
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var adressLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UITextView!

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setUp()
    }

    fileprivate func setUp(){
        //round corners
        profileImage.layer.masksToBounds = true
        profileImage.layer.cornerRadius = 25
        profileImage.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner]
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
