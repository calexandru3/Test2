//
//  DetailsCustomCell.swift
//  Test2
//
//  Created by Bogdan Marica on 04/12/2019.
//  Copyright © 2019 Florin Precup. All rights reserved.
//

import UIKit

class DetailsCustomCell: UITableViewCell {

    var profileModel:ProfileStruct? {
        didSet {
            guard let model = profileModel else {return}
            profileImageView.image = model.image
            nameLabel.text = model.name
            addressLabel.text = model.adress
        }
    }

    @IBOutlet weak var profileImageView: RoundedImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        //round corners
        profileImageView.layer.masksToBounds = true
        profileImageView.layer.cornerRadius = 25
        profileImageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner]
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
