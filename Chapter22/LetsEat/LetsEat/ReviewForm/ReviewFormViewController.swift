//
//  ReviewFormViewController.swift
//  LetsEat
//
//  Created by admin on 04/12/2019.
//  Copyright © 2019 MyName. All rights reserved.
//

import UIKit

class ReviewFormViewController: UITableViewController {
    
    var selectedRestaurantID:Int?
    
    @IBOutlet weak var ratingView: RatingsView!
    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tvReview: UITextView!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(selectedRestaurantID as Any)

    }
}

private extension ReviewFormViewController {
    
    @IBAction func onSaveTapped(_ sender: Any) {
        
        var item = ReviewItem()
        item.name = tfName.text
        item.title = tfTitle.text
        item.customerReview = tvReview.text
        item.restaurantID = selectedRestaurantID
        item.rating = Float(ratingView.rating)
        
        let manager = CoreDataManager()
        manager.addReview(item)
        
        dismiss(animated: true, completion: nil )
    }
    
}
