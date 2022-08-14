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
    
    @IBOutlet weak var view_backgroundDismiss: UIView!
    
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    
    // MARK: - Init
    private func setupInit() {

        let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissTap(_:)))
        view_backgroundDismiss.addGestureRecognizer(tap)
    }
    
    @objc func dismissTap(_ sender: UITapGestureRecognizer? = nil) {
        self.dismiss(animated: true)
    }
    
    // MARK: - Action
    
    @IBAction func onCreateMenuAction(_ sender: UIButton) {
        self.router.gotoListMenu()
    }
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
