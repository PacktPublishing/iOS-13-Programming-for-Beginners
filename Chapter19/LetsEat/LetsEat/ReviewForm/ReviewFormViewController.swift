//
//  ReviewFormViewController.swift
//  LetsEat
//
//  Created by admin on 04/12/2019.
//  Copyright © 2019 MyName. All rights reserved.
//

import UIKit

class ReviewFormViewController: UITableViewController {
    
    @IBOutlet weak var ratingView: RatingsView!
    @IBOutlet weak var tfTitle: UITextField!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tvReview: UITextView!
    
    @IBAction func onSaveTapped(_ sender: Any) {
        print(ratingView.rating)
        print(tfTitle.text as Any)
        print(tfName.text as Any)
        print(tvReview.text as Any)
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
