import UIKit
import PlaygroundSupport

class CollectionViewExampleController: UIViewController, UICollectionViewDataSource {
    
    var collectionView: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCollectionView()
    }
    
    func createCollectionView(){
        self.collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height), collectionViewLayout:UICollectionViewFlowLayout())
        self.collectionView?.dataSource = self
        self.collectionView?.backgroundColor = .white
        self.collectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "BoxCell")
        self.view.addSubview(self.collectionView!)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BoxCell", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
}

PlaygroundPage.current.liveView = CollectionViewExampleController()
