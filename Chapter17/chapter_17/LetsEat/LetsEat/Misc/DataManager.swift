//
//  DataManager.swift
//  LetsEat
//
//  Created by admin on 22/10/2019.
//  Copyright © 2019 MyName. All rights reserved.
//

import Foundation

protocol DataManager {
    func load(file name:String) -> [[String:AnyObject]]
}

extension DataManager {
    func load(file name: String) -> [[String:AnyObject]] {
        guard let path = Bundle.main.path(forResource: name, ofType: "plist"), let items = NSArray(contentsOfFile: path) else {
            return [[:]]
        }
        return items as! [[String:AnyObject]]
    }
}
