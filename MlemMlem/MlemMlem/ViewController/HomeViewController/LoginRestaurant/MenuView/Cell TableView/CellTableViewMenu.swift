//
//  CellTableViewMenu.swift
//  MlemMlem
//
//  Created by Tiến Trần on 19/08/2022.
//

import UIKit

class CellTableViewMenu: UITableViewCell {
    
    @IBOutlet weak var coll_CollectionView: UICollectionView!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
        self.setInitCollectionView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//MARK: - UICollectionViewDataSource
extension CellTableViewMenu: UICollectionViewDataSource {
    func setInitCollectionView() {
        self.coll_CollectionView.registerNib(ofType: CellCollectionViewMenu.self)
        self.coll_CollectionView.delegate = self
        self.coll_CollectionView.dataSource = self
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        layout.itemSize = CGSize(width: 153, height: 168)
        self.coll_CollectionView.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueCell(ofType: CellCollectionViewMenu.self, for: indexPath)
        return cell
    }
}

//MARK: - UICollectionViewDelegate
extension CellTableViewMenu: UICollectionViewDelegate {
    
}
