//
//  
//  KichenViewOptionViewController.swift
//  MlemMlem
//
//  Created by TruongTV2 on 18/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol KichenViewOptionViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - KichenViewOption ViewController
class KichenViewOptionViewController: BaseViewController {
    var router: KichenViewOptionRouterProtocol!
    var viewModel: KichenViewOptionViewModelProtocol!
    
    
    
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

// MARK: - KichenViewOption ViewProtocol
extension KichenViewOptionViewController: KichenViewOptionViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
