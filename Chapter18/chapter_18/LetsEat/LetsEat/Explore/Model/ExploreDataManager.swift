//
//  ExploreDataManager.swift
//  LetsEat
//
//  Created by admin on 19/10/2019.
//  Copyright © 2019 MyName. All rights reserved.
//

import Foundation

class ExploreDataManager: DataManager {
    
    fileprivate var items:[ExploreItem] = []
    
    func fetch() {
        for data in load(file: "ExploreData"){
            items.append(ExploreItem(dict: data))
        }
    }
    
    func numberOfItems() -> Int {
        return items.count
    }
    
    func explore(at index:IndexPath) -> ExploreItem {
        return items[index.item]
    }
    
}
