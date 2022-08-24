//
//  
//  ListExpectedDishViewController.swift
//  MlemMlem
//
//  Created by TruongTV2 on 24/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol ListExpectedDishViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - ListExpectedDish ViewController
class ListExpectedDishViewController: BaseViewController {
    var router: ListExpectedDishRouterProtocol!
    var viewModel: ListExpectedDishViewModelProtocol!
    
    
    @IBOutlet weak var tbv_TableView: UITableView!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    
    // MARK: - Init
    private func setupInit() {

    }
    
    // MARK: - Action
    
}

// MARK: - ListExpectedDish ViewProtocol
extension ListExpectedDishViewController: ListExpectedDishViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
