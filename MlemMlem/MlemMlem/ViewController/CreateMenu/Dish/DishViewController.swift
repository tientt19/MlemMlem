//
//  
//  DishViewController.swift
//  MlemMlem
//
//  Created by MaiNT6 on 8/13/22.
//
//

import UIKit

// MARK: - ViewProtocol
protocol DishViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - Dish ViewController
class DishViewController: BaseViewController {
    var router: DishRouterProtocol!
    var viewModel: DishViewModelProtocol!
    
    
    @IBOutlet weak var view_background: BackgroundView!{
        didSet {
            view_background.setTitle("Thực đơn").setBackListener{
                self.dismiss(animated: true)
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

    }
    
    // MARK: - Action
    
}

// MARK: - Dish ViewProtocol
extension DishViewController: DishViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
