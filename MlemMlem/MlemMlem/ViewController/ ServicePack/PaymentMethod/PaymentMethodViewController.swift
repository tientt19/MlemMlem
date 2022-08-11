//
//  
//  PaymentMethodViewController.swift
//  MlemMlem
//
//  Created by TruongTV2 on 11/08/2022.
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

// MARK: - PaymentMethod ViewProtocol
extension PaymentMethodViewController: PaymentMethodViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
