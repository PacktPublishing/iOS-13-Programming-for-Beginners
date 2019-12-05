//
//  RestaurantDetailViewController.swift
//  LetsEat
//
//  Created by admin on 23/10/2019.
//  Copyright © 2019 MyName. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UITableViewController {
    
    var selectedRestaurant: RestaurantItem?

    override func viewDidLoad() {
        super.viewDidLoad()
        dump(selectedRestaurant as Any)
    }
}
