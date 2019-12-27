//
//  FilterManager.swift
//  LetsEat
//
//  Created by admin on 04/12/2019.
//  Copyright © 2019 MyName. All rights reserved.
//

import Foundation

class FilterManager: DataManager {
    func fetch(completionHandler:(_ items:[FilterItem]) -> Swift.Void) {
        var items:[FilterItem] = []
        for data in load(file: "FilterData") {
            items.append(FilterItem(dict: data))
        }
        completionHandler(items)
    }
}
