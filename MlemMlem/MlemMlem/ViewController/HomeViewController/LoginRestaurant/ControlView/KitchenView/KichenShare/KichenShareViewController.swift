//
//  
//  KichenShareViewController.swift
//  MlemMlem
//
//  Created by TruongTV2 on 18/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol KichenShareViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - KichenShare ViewController
class KichenShareViewController: BaseViewController {
    var router: KichenShareRouterProtocol!
    var viewModel: KichenShareViewModelProtocol!
    
    
    
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

// MARK: - KichenShare ViewProtocol
extension KichenShareViewController: KichenShareViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
