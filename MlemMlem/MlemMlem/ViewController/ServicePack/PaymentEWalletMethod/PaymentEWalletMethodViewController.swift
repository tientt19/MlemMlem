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
                self.navigationController?.popViewController(animated: true)
            }.done()
        }
    }
    @IBOutlet weak var view_eWalletMethod: PaymentMethodView! {
        didSet {
            view_eWalletMethod.setTypePaymentMethod(.eWallet).done()
        }
    }
    @IBOutlet weak var view_cashMethod: PaymentMethodView!
    {
        didSet {
            view_cashMethod.setTypePaymentMethod(.cash).done()
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
    @IBAction func onPaymentAction(_ sender: Any) {
        self.router.gotoCreditCard()
    }
    
    @IBAction func onChoosePaymentMethodAction(_ sender: UIButton) {
        if sender.tag == 0 {
            
            view_eWalletMethod.checkPaymentMethod(true)
            view_cashMethod.checkPaymentMethod(false)
            
        } else {
            
            view_eWalletMethod.checkPaymentMethod(false)
            view_cashMethod.checkPaymentMethod(true)
            
        }
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
