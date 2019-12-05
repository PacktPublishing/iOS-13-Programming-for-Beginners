//
//  ReviewDataManager.swift
//  LetsEat
//
//  Created by admin on 28/10/2019.
//  Copyright © 2019 MyName. All rights reserved.
//

import UIKit

class ReviewDataManager: NSObject {
    
    private var reviewItems: [ReviewItem] = []
    private var photoItems: [RestaurantPhotoItem] = []
    let manager = CoreDataManager()
    
    func fetchReview(by restaurantID: Int) {
        if reviewItems.count > 0 {
            reviewItems.removeAll()
        }
        for data in manager.fetchReviews(by: restaurantID) {
            reviewItems.append(data)
        }
    }
    
    func fetchPhoto(by restaurantID: Int) {
        if photoItems.count > 0 {
            photoItems.removeAll()
        }
        for data in manager.fetchPhotos(by: restaurantID) {
            photoItems.append(data)
        }
    }
    
    func numberOfReviews() -> Int {
        return reviewItems.count
    }
    
    func numberOfPhotos() -> Int {
        return photoItems.count
    }
    
    func reviewItem(at index: IndexPath) -> ReviewItem {
        return reviewItems[index.item]
    }
    
    func photoItem(at index: IndexPath) -> RestaurantPhotoItem {
        return photoItems[index.item]
    }


}
