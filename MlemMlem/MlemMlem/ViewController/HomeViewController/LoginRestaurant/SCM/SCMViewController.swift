//
//  
//  SCMViewController.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol SCMViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - SCM ViewController
class SCMViewController: BaseViewController {
    var router: SCMRouterProtocol!
    var viewModel: SCMViewModelProtocol!
    
    
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    
    // MARK: - Init
    private func setupInit() {
//        dataSource = self
//        delegate = self
//        setViewControllers([viewModel.createSlideViewController(fromIndex: 0)], direction: .forward, animated: true)
    }
    
    // MARK: - Action
    
}

// MARK: - SCM ViewProtocol
extension SCMViewController: SCMViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
