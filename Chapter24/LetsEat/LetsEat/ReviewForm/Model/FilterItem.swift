//
//  FilterItem.swift
//  LetsEat
//
//  Created by admin on 04/12/2019.
//  Copyright © 2019 MyName. All rights reserved.
//

import Foundation

class FilterItem: NSObject {
    let filter:String
    let name:String
    
    init(dict:[String:AnyObject]){
        name = dict["name"] as! String
        filter = dict["filter"] as! String
    }
}
