//
//  PhotoCell.swift
//  LetsEat
//
//  Created by admin on 25/08/2019.
//  Copyright © 2019 MyName. All rights reserved.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    @IBOutlet weak var imgReview: UIImageView!
}

extension PhotoCell {
    func set(image:UIImage) {
        imgReview.image = image
        roundedCorners()
    }
    
    func roundedCorners() {
        imgReview.layer.cornerRadius = 9
        imgReview.layer.masksToBounds = true
    }
}
