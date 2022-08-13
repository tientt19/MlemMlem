//
//  
//  ListMenuViewController.swift
//  MlemMlem
//
//  Created by MaiNT6 on 8/13/22.
//
//

import UIKit

// MARK: - ViewProtocol
protocol ListMenuViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - ListMenu ViewController
class ListMenuViewController: BaseViewController {
    var router: ListMenuRouterProtocol!
    var viewModel: ListMenuViewModelProtocol!
    var listMenu: [String] = ["Món yêu thích","Best Collections","Món Hot trong tuần","Best Sellers"]
    @IBOutlet weak var view_background: BackgroundView!{
        didSet {
            view_background.setTitle("Danh sách Menu").setBackListener{
                self.dismiss(animated: true)
            }.done()
        }
    }
    
    @IBOutlet weak var constraint_height_tbv: NSLayoutConstraint!
    @IBOutlet weak var tbv_outstanding: UITableView!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        super.updateViewConstraints()
        self.constraint_height_tbv?.constant = 0
    }
    
    // MARK: - Init
    private func setupInit() {
        tbv_outstanding.delegate = self
        tbv_outstanding.dataSource = self
        tbv_outstanding.registerNib(ofType: ListMenuCellTableViewCell.self)
    }
    
    // MARK: - Action
    @IBAction func onDropDownMenuAction(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
            if sender.isSelected {
                
                self.constraint_height_tbv?.constant = self.tbv_outstanding.contentSize.height + 40
                
            } else {
                
                self.constraint_height_tbv?.constant = 0
                
            }
    }
    
}

extension ListMenuViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCell(ofType: ListMenuCellTableViewCell.self, for: indexPath)
        cell.lbl_nameDish.text = listMenu[indexPath.row]
        return cell
    }
    
    
}

extension ListMenuViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
//        self.viewWillLayoutSubviews()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45
    }
}

// MARK: - ListMenu ViewProtocol
extension ListMenuViewController: ListMenuViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
