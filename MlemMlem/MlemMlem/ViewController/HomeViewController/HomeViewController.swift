//
//  
//  HomeViewController.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol HomeViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - Home ViewController
class HomeViewController: BaseViewController {
    var router: HomeRouterProtocol!
    var viewModel: HomeViewModelProtocol!
    
    @IBOutlet weak var tbv_TableView: UITableView!
    @IBOutlet weak var contraint_HeightTableView: NSLayoutConstraint!
    
    @IBOutlet weak var view_background: BackgroundView! {
        didSet {
            self.view_background.setTitle("Tất cả các cửa hàng").setBackListener{
                self.navigationController?.popViewController(animated: true)
            }.done()
            self.view_background.backButton.isHidden = true
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
        self.setIntTableView()
        self.contraint_HeightTableView.constant = 106 * 3
    }
    
    // MARK: - Action
    
}

//MARK: - UITableViewDataSource
extension HomeViewController: UITableViewDataSource {
    func setIntTableView() {
        self.tbv_TableView.registerNib(ofType: CellTableViewRestaurant.self)
        self.tbv_TableView.delegate = self
        self.tbv_TableView.dataSource = self
        self.tbv_TableView.separatorStyle = .none
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCell(ofType: CellTableViewRestaurant.self, for: indexPath)
        return cell
    }
}

//MARK: - UITableViewDelegate
extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.router.goToLoginRestaurant()
    }
}


// MARK: - Home ViewProtocol
extension HomeViewController: HomeViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
