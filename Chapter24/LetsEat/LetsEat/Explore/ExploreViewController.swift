//
//  ExploreViewController.swift
//  LetsEat
//
//  Created by admin on 28/11/2019.
//  Copyright © 2019 MyName. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController,  UICollectionViewDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    let manager = ExploreDataManager()
    var selectedCity:LocationItem?
    var headerView:ExploreHeaderView!
    fileprivate let minItemSpacing: CGFloat = 7
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        switch  segue.identifier! {
        case Segue.locationList.rawValue:
            showLocationList(segue: segue)
        case Segue.restaurantList.rawValue:
            showRestaurantListing(segue: segue)
        default:
            print("Segue not added")
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == Segue.restaurantList.rawValue {
            guard selectedCity != nil else {
                showAlert()
                return false
            }
            return true
        }
        return true
    }
}

// MARK: Private Extension
private extension ExploreViewController {
    
    func initialize() {
        manager.fetch()
        setupCollectionView()
    }
    
    func setupCollectionView() {
        let flow = UICollectionViewFlowLayout()
        flow.sectionInset = UIEdgeInsets(top: 7, left: 7, bottom: 7, right: 7)
        flow.minimumInteritemSpacing = 0
        flow.minimumLineSpacing = 7
        collectionView?.collectionViewLayout = flow
    }
    
    func showLocationList(segue:UIStoryboardSegue){
        guard let navController = segue.destination as? UINavigationController, let viewController = navController.topViewController as? LocationViewController else {
            return
        }
        guard let city = selectedCity else { return }
        viewController.selectedCity = city
    }
    
    func showRestaurantListing(segue: UIStoryboardSegue) {
        if let viewController = segue.destination as? RestaurantListViewController, let city = selectedCity, let index = collectionView.indexPathsForSelectedItems?.first {
            viewController.selectedType = manager.explore(at: index).name
            viewController.selectedCity = city
        }
    }
    
    func showAlert() {
        let alertController = UIAlertController(title: "Location Needed", message: "Please select a location", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func unwindLocationCancel(segue:UIStoryboardSegue){
        
    }
    
    @IBAction func unwindLocationDone(segue:UIStoryboardSegue){
        if let viewController = segue.source as? LocationViewController {
            selectedCity = viewController.selectedCity
            if let location = selectedCity {
                headerView.lblLocation.text = location.full
            }
        }
    }
}

// MARK: UICollectionViewDataSource
extension ExploreViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
        headerView = header as? ExploreHeaderView
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return manager.numberOfItems()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "exploreCell", for: indexPath) as! ExploreCell
        let item = manager.explore(at: indexPath)
        cell.lblName.text = item.name
        cell.imgExplore.image = UIImage(named: item.image)
        return cell
    }
}

extension ExploreViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var factor = 0
        var delta = 0
        if Device.isPad {
            factor = 3
            delta = 50
        } else {
            factor = traitCollection.horizontalSizeClass == .compact ? 2:3
            delta = traitCollection.horizontalSizeClass == .compact ? 10:70
        }
        let screenRect = collectionView.frame.size.width
        let screenWidth = screenRect - (CGFloat(minItemSpacing) * CGFloat(factor + 1))
        let cellWidth = screenWidth / CGFloat(factor)
        let cellHeight = cellWidth - CGFloat(delta)
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: self.collectionView.frame.width, height: 100)
    }
}
