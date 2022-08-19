//
//  
//  MenuViewController.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol MenuViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - Menu ViewController
class MenuViewController: BaseViewController {
    var router: MenuRouterProtocol!
    var viewModel: MenuViewModelProtocol!
    
    @IBOutlet weak var img_Header: UIView!
    @IBOutlet weak var view_Restaurant: UIView!
    @IBOutlet weak var coll_Collection: UICollectionView!
    @IBOutlet weak var tbv_TableView: UITableView!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let indexPathForFirstRow = IndexPath(row: 0, section: 0)
        self.coll_Collection.selectItem(at: indexPathForFirstRow, animated: true, scrollPosition: [.centeredHorizontally])
        let _ = self.collectionView(self.coll_Collection, cellForItemAt: indexPathForFirstRow)
    }
    
    // MARK: - Init
    private func setupInit() {
        self.img_Header.clipsToBounds = true
        self.img_Header.cornerRadius = 35
        self.img_Header.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        self.view_Restaurant.addShadow(width: 0, height: 2, color: .black, radius: 6, opacity: 0.25)
        
        self.setInitCollectionView()
        self.setInitTableView()
    }
    
    // MARK: - Action
    
    @IBAction func onUpdateMenuAction(_ sender: UIButton) {
        self.router.goToUpdateMenu()
    }
}

//MARK: - UITableViewDataSource
extension MenuViewController: UITableViewDataSource {
    func setInitTableView() {
        self.tbv_TableView.registerNib(ofType: CellTableViewMenu.self)
        self.tbv_TableView.registerHeaderNib(ofType: SectionHeader.self)
        
        self.tbv_TableView.delegate = self
        self.tbv_TableView.dataSource = self
        self.tbv_TableView.separatorStyle = .none
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCell(ofType: CellTableViewMenu.self, for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueHeaderView(ofType: SectionHeader.self)
        return cell
    }
}

//MARK: - UITableViewDelegate
extension MenuViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
}

//MARK: - UICollectionViewDataSource
extension MenuViewController: UICollectionViewDataSource {
    func setInitCollectionView() {
        self.coll_Collection.registerNib(ofType: CellCollectionView.self)

        self.coll_Collection.delegate = self
        self.coll_Collection.dataSource = self

        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 20
        layout.minimumInteritemSpacing = 20
        layout.sectionInset = UIEdgeInsets(top: 0, left: 26, bottom: 0, right: 0)
        self.coll_Collection.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueCell(ofType: CellCollectionView.self, for: indexPath)
        return cell
    }
}

//MARK: - UICollectionViewDelegate
extension MenuViewController: UICollectionViewDelegate {
    
}

//MARK: - UICollectionViewDelegateFlowLayout
extension MenuViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let padding: CGFloat = 12
        let textSize = "Best Sellers".width(withConstrainedHeight: 17, font: R.font.interMedium(size: 14)!)
        let cellWidth = padding * 2 + textSize
        return CGSize(width: cellWidth, height: 40)
    }
}

// MARK: - Menu ViewProtocol
extension MenuViewController: MenuViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
