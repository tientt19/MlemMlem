//
//  
//  PaymentMethodViewController.swift
//  MlemMlem
//
//  Created by Valerian on 11/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol PaymentMethodViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - PaymentMethod ViewController
class PaymentMethodViewController: BaseViewController {
    var router: PaymentMethodRouterProtocol!
    var viewModel: PaymentMethodViewModelProtocol!
    
    @IBOutlet weak var view_imageBackground: UIView!
    @IBOutlet weak var view_EWallet: UIView!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    
    // MARK: - Init
    private func setupInit() {
        self.view_imageBackground.clipsToBounds = true
        self.view_imageBackground.cornerRadius = 35
        self.view_imageBackground.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
    
    // MARK: - Action
    @IBAction func onEWallAction(_ sender: UIButton) {
        UIView.animate(withDuration: 1, delay: 0, animations: {
            self.view_EWallet.isHidden = false
        })
        
        UIView.animate(withDuration: 0.5, delay: 0, animations: {
            self.view_EWallet.alpha = 1;
        })
    }
    
    @IBAction func onCashAction(_ sender: UIButton) {
        UIView.animate(withDuration: 1, delay: 0, animations: {
            self.view_EWallet.isHidden = true
        })
        
        UIView.animate(withDuration: 0.5, delay: 0, animations: {
            self.view_EWallet.alpha = 0;
        })
    }
    
    @IBAction func onVisaAction(_ sender: UIButton) {
        UIView.animate(withDuration: 1, delay: 0, animations: {
            self.view_EWallet.isHidden = true
        })
        
        UIView.animate(withDuration: 0.5, delay: 0, animations: {
            self.view_EWallet.alpha = 0;
        })
    }
}

// MARK: - PaymentMethod ViewProtocol
extension PaymentMethodViewController: PaymentMethodViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
