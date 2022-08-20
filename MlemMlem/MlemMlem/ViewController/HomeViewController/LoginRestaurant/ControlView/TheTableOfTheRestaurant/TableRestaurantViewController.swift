//
//  
//  TableRestaurantViewController.swift
//  MlemMlem
//
//  Created by TruongTV2 on 17/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol TableRestaurantViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - TableRestaurant ViewController
class TableRestaurantViewController: BaseViewController {
    var router: TableRestaurantRouterProtocol!
    var viewModel: TableRestaurantViewModelProtocol!
    let insetsSession = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    let itemsPerRow: CGFloat = 4.0
    
    
    @IBOutlet weak var constant_collectionViewHeight: NSLayoutConstraint!
    @IBOutlet weak var coll_CollectionView: UICollectionView!
    
    @IBOutlet weak var view_background: BackgroundView!{
        didSet {
            view_background.setTitle("Bàn đang hoạt động").setBackListener {
                self.navigationController?.popViewController(animated: true)
            }.done()
        }
    }
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    
    // MARK: - Init
    private func setupInit() {
        self.coll_CollectionView.registerNib(ofType: CellCollectionViewTableRestaurant.self)
        self.coll_CollectionView.delegate = self
        self.coll_CollectionView.dataSource = self
    }
    
    // MARK: - Action
    
}

extension TableRestaurantViewController: UICollectionViewDataSource {
    func setIntCollectionView() {
        self.coll_CollectionView.registerNib(ofType: CellCollectionViewTableRestaurant.self)
        self.coll_CollectionView.delegate = self
        self.coll_CollectionView.dataSource = self
        self.coll_CollectionView.reloadData()
        self.coll_CollectionView.performBatchUpdates(nil) { [weak self] _ in
            guard let self = self else { return }
            self.constant_collectionViewHeight.constant = self.coll_CollectionView.collectionViewLayout.collectionViewContentSize.height
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueCell(ofType: CellCollectionViewTableRestaurant.self, for: indexPath)
        cell.lbl_numberOfTable.text = "\(indexPath.row + 1)"
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = .OrangeFE7A3E
            cell.lbl_numberOfTable.textColor = .white
            
        } else {
            
            cell.backgroundColor = .GrayD2DAE3
            cell.lbl_numberOfTable.textColor = .black
        }
        return cell
    }
    
    
}

extension TableRestaurantViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        router.gotoDetaiTable(indexPath.row + 1)
    }
}

extension TableRestaurantViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace = CGFloat((itemsPerRow + 1)) * insetsSession.left
        let availableWidth = coll_CollectionView.frame.width - paddingSpace
        let width = availableWidth / itemsPerRow - 10
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        insetsSession
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        insetsSession.left
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        insetsSession.left
    }
    
}

// MARK: - TableRestaurant ViewProtocol
extension TableRestaurantViewController: TableRestaurantViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
