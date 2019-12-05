//
//  ExploreItem.swift
//  LetsEat
//
//  Created by admin on 19/10/2019.
//  Copyright © 2019 MyName. All rights reserved.
//

import Foundation

struct ExploreItem {
    var name: String
    var image: String
}

extension ExploreItem {
    init(dict: [String:AnyObject]){
        self.name = dict["name"] as! String
        self.image = dict["image"] as! String
    }
}
