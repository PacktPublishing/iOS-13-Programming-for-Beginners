//
//  RestaurantListViewController.swift
//  LetsEat
//
//  Created by admin on 28/11/2019.
//  Copyright © 2019 MyName. All rights reserved.
//

import UIKit

class RestaurantListViewController: UIViewController,  UICollectionViewDelegate {
    
    var manager = RestaurantDataManager()
    var selectedRestaurant: RestaurantItem?
    var selectedCity: LocationItem?
    var selectedType: String?
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    fileprivate let minItemSpacing: CGFloat = 7

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender:Any?) {
        if let identifier = segue.identifier {
            switch identifier {
            case Segue.showDetail.rawValue:
                showRestaurantDetail(segue:segue)
            default:
                print("Segue not added")
            }
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        initialize()
    }
    
}

// MARK: Private Extension
private extension RestaurantListViewController {
    
    func initialize() {
        createData()
        setupTitle()
        setupCollectionView()
    }
    
    func setupCollectionView() {
        let flow = UICollectionViewFlowLayout()
        flow.sectionInset = UIEdgeInsets(top: 7, left: 7, bottom: 7, right: 7)
        flow.minimumInteritemSpacing = 0
        flow.minimumLineSpacing = 7
        collectionView?.collectionViewLayout = flow
    }
    
    func createData() {
        guard let location = selectedCity?.city, let filter = selectedType else {
            return
        }
        manager.fetch(by: location, with: filter) { _ in
            if manager.numberOfItems() > 0 {
                collectionView.backgroundView = nil
            } else {
                let view = NoDataView(frame: CGRect(x: 0, y: 0, width: collectionView.frame.width, height: collectionView.frame.height))
                view.set(title: "Restaurants")
                view.set(desc: "No restaurants found.")
                collectionView.backgroundView = view
            }
            collectionView.reloadData()
        }
    }
    
    func setupTitle() {
        navigationController?.setNavigationBarHidden(false, animated: false)
        if let city = selectedCity?.city, let state = selectedCity?.state {
            title = "\(city.uppercased()), \(state.uppercased())"
        }
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func showRestaurantDetail(segue:UIStoryboardSegue){
        if let viewController = segue.destination as? RestaurantDetailViewController, let index = collectionView.indexPathsForSelectedItems?.first {
            selectedRestaurant = manager.restaurantItem(at: index)
            viewController.selectedRestaurant = selectedRestaurant
        }
    }
}

// MARK: UICollectionViewDataSource
extension RestaurantListViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return manager.numberOfItems()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "restaurantCell", for: indexPath ) as! RestaurantCell
        let item = manager.restaurantItem(at: indexPath )
        if let name = item.name { cell.lblTitle.text = name }
        if let cuisine = item.subtitle { cell.lblCuisine.text = cuisine }
        if let image = item.imageURL {
            if let url = URL(string: image) {
                let data = try? Data(contentsOf: url)
                if let imageData = data {
                    DispatchQueue.main.async {
                        cell.imgRestaurant.image = UIImage(data:imageData)
                    }
                }
            }
        }
        return cell
    }
    
}

extension RestaurantListViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var factor = 0
        var delta = 0
        if Device.isPad {
            factor = 3
            delta = -60
        } else {
            factor = traitCollection.horizontalSizeClass == .compact ? 1:2
            delta = 90
        }
        let screenRect = collectionView.frame.size.width
        let screenWidth = screenRect - (CGFloat(minItemSpacing) * CGFloat(factor + 1))
        let cellWidth = screenWidth / CGFloat(factor)
        let cellHeight = cellWidth - CGFloat(delta)
        return CGSize(width: cellWidth, height: cellHeight)
    }
}
