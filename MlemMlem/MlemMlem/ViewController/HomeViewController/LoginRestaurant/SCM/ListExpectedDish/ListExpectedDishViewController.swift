//
//  
//  ListExpectedDishViewController.swift
//  MlemMlem
//
//  Created by MaiNT6 on 8/20/22.
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
