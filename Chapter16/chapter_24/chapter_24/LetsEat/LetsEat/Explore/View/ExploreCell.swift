//
//  ExploreCell.swift
//  LetsEat
//
//  Created by admin on 19/10/2019.
//  Copyright © 2019 MyName. All rights reserved.
//

import UIKit

class ExploreCell: UICollectionViewCell {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgExplore: UIImageView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        roundedCorners()
    }
    
}

private extension ExploreCell {
    func roundedCorners() {
        imgExplore.layer.cornerRadius = 9
        imgExplore.layer.masksToBounds = true
    }
}
