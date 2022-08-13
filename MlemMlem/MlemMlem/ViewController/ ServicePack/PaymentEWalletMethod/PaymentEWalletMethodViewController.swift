//
//  
//  PaymentEWalletMethodViewController.swift
//  MlemMlem
//
//  Created by MaiNT6 on 8/13/22.
//
//

import UIKit

// MARK: - ViewProtocol
protocol PaymentEWalletMethodViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - PaymentEWalletMethod ViewController
class PaymentEWalletMethodViewController: BaseViewController {
    var router: PaymentEWalletMethodRouterProtocol!
    var viewModel: PaymentEWalletMethodViewModelProtocol!
    
    @IBOutlet weak var view_background: BackgroundView!{
        didSet {
            view_background.setTitle("Hình thức thanh toán").setBackListener{
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
    @IBAction func paymentTap(_ sender: Any) {
        self.router.gotoCreditCard()
    }
}

// MARK: - PaymentEWalletMethod ViewProtocol
extension PaymentEWalletMethodViewController: PaymentEWalletMethodViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
