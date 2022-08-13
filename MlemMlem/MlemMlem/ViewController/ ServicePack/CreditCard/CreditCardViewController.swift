//
//  
//  CreditCardViewController.swift
//  MlemMlem
//
//  Created by TruongTV2 on 11/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol CreditCardViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - CreditCard ViewController
class CreditCardViewController: BaseViewController {
    var router: CreditCardRouterProtocol!
    var viewModel: CreditCardViewModelProtocol!
    
    @IBOutlet weak var view_background: BackgroundView!{
        didSet {
            view_background.setTitle("Thẻ tín dụng").setBackListener{
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
        self.router.gotoPaymentSuccess()
    }
    
}

// MARK: - CreditCard ViewProtocol
extension CreditCardViewController: CreditCardViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
