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
    private var insetsSession = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    private var itemPerRow:CGFloat = 4.0
    
    
    @IBOutlet weak var constraint_collectionViewHeight: NSLayoutConstraint!
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
    
    func ConstraintCollectionViewHeight() {
        self.constraint_collectionViewHeight.constant = self.coll_CollectionView.collectionViewLayout.collectionViewContentSize.height
        self.coll_CollectionView.layoutIfNeeded()
    }
    
    
    // MARK: - Init
    private func setupInit() {
        setIntCollectionView()
        ConstraintCollectionViewHeight()
    }
    
    // MARK: - Action
    
}

extension TableRestaurantViewController: UICollectionViewDataSource {
    func setIntCollectionView() {
        coll_CollectionView.isScrollEnabled = false
        constraint_collectionViewHeight.isActive = true
        self.coll_CollectionView.registerNib(ofType: CellCollectionViewTableRestaurant.self)
        self.coll_CollectionView.delegate = self
        self.coll_CollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueCell(ofType: CellCollectionViewTableRestaurant.self, for: indexPath)
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
    
}

extension TableRestaurantViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let paddingSpace = CGFloat((itemPerRow + 1)) * insetsSession.left
        let availableWidth = self.coll_CollectionView.frame.width
        let width = availableWidth / itemPerRow
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
