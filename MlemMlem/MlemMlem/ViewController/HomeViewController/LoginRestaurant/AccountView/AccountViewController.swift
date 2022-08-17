//
//  
//  AccountViewController.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol AccountViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - Account ViewController
class AccountViewController: BaseViewController {
    var router: AccountRouterProtocol!
    var viewModel: AccountViewModelProtocol!
    
    @IBOutlet weak var view_background: BackgroundView! {
        didSet {
            view_background.setTitle("Tài khoản").done()
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

// MARK: - Account ViewProtocol
extension AccountViewController: AccountViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
