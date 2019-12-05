//
//  RestaurantListViewController.swift
//  LetsEat
//
//  Created by admin on 15/10/2019.
//  Copyright © 2019 MyName. All rights reserved.
//

import UIKit

class RestaurantListViewController: UIViewController,  UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

// MARK: Private Extension
private extension RestaurantListViewController {
    
}

// MARK: UICollectionViewDataSource
extension RestaurantListViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: "restaurantCell", for: indexPath)
    }
    
}
