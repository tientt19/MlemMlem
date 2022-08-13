//
//  
//  PopupPaymentSuccessViewController.swift
//  MlemMlem
//
//  Created by TruongTV2 on 11/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol PopupPaymentSuccessViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - PopupPaymentSuccess ViewController
class PopupPaymentSuccessViewController: BaseViewController {
    var router: PopupPaymentSuccessRouterProtocol!
    var viewModel: PopupPaymentSuccessViewModelProtocol!
    
    
    
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

// MARK: - PopupPaymentSuccess ViewProtocol
extension PopupPaymentSuccessViewController: PopupPaymentSuccessViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
