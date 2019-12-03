//
//  RoundedImageView.swift
//  Test2
//
//  Created by Bogdan Marica on 03/12/2019.
//  Copyright © 2019 Florin Precup. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        //round corners
         self.layer.masksToBounds = true
         self.layer.cornerRadius = 25
         self.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMaxYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner]
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
