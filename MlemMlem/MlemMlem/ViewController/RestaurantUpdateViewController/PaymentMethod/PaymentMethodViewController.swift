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
    
    @IBOutlet weak var view_background: BackgroundView! {
        didSet {
            view_background.setTitle("Hình thức thanh toán").setBackListener{
                self.navigationController?.popViewController(animated: true)
            }.done()
        }
    }
    
    @IBOutlet weak var view_EWallet: UIView!
    @IBOutlet weak var view_Credit: UIView!
    
    @IBOutlet weak var view_CashTap: UIView!
    @IBOutlet weak var view_EWalletTap: UIView!
    @IBOutlet weak var view_CreditTap: UIView!
    
    @IBOutlet weak var lbl_CashTitle: UILabel!
    @IBOutlet weak var lbl_EWalletTitle: UILabel!
    @IBOutlet weak var lbl_CreditTitle: UILabel!
    
    @IBOutlet weak var btn_CashTap: UIButton!
    @IBOutlet weak var btn_EWalletTap: UIButton!
    @IBOutlet weak var btn_CreditTap: UIButton!
    

    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    
    // MARK: - Init
    private func setupInit() {
        self.view_CashTap.backgroundColor = UIColor(hex: "FE7A3E")
        self.btn_CashTap.setImage(R.image.ic_check_chosen(), for: .normal)
        self.lbl_CashTitle.textColor = .white
    }
    
    // MARK: - Action
    @IBAction func onEWallAction(_ sender: UIButton) {
        self.view_EWalletTap.backgroundColor = UIColor(hex: "FE7A3E")
        self.btn_EWalletTap.setImage(R.image.ic_check_chosen(), for: .normal)
        self.lbl_EWalletTitle.textColor = .white
        
        self.view_CashTap.backgroundColor = .white
        self.btn_CashTap.setImage(UIImage(named: ""), for: .normal)
        self.lbl_CashTitle.textColor = .black
        
        self.view_CreditTap.backgroundColor = .white
        self.btn_CreditTap.setImage(UIImage(named: ""), for: .normal)
        self.lbl_CreditTitle.textColor = .black
        
        self.view_EWallet.isHidden = false
        self.view_Credit.isHidden = true
    }
    
    @IBAction func onCashAction(_ sender: UIButton) {
        self.view_CashTap.backgroundColor = UIColor(hex: "FE7A3E")
        self.btn_CashTap.setImage(R.image.ic_check_chosen(), for: .normal)
        self.lbl_CashTitle.textColor = .white
        
        self.view_EWalletTap.backgroundColor = .white
        self.lbl_EWalletTitle.textColor = .black
        self.btn_EWalletTap.setImage(UIImage(named: ""), for: .normal)
        
        self.view_CreditTap.backgroundColor = .white
        self.lbl_CreditTitle.textColor = .black
        self.btn_CreditTap.setImage(UIImage(named: ""), for: .normal)
        
        self.view_EWallet.isHidden = true
        self.view_Credit.isHidden = true
    }
    
    @IBAction func onVisaAction(_ sender: UIButton) {
        self.view_CreditTap.backgroundColor = UIColor(hex: "FE7A3E")
        self.lbl_CreditTitle.textColor = .white
        self.btn_CreditTap.setImage(R.image.ic_check_chosen(), for: .normal)
        
        self.view_EWalletTap.backgroundColor = .white
        self.lbl_EWalletTitle.textColor = .black
        self.btn_EWalletTap.setImage(UIImage(named: ""), for: .normal)
        
        self.view_CashTap.backgroundColor = .white
        self.lbl_CashTitle.textColor = .black
        self.btn_CashTap.setImage(UIImage(named: ""), for: .normal)
        
        self.view_EWallet.isHidden = true
        self.view_Credit.isHidden = false
    }
    
    @IBAction func onToMenuAction(_ sender: UIButton) {
        self.router.gotoMenu()
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
