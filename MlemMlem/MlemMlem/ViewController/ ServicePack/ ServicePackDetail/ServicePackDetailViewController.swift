//
//  
//  ServicePackDetailViewController.swift
//  MlemMlem
//
//  Created by TruongTV2 on 10/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol ServicePackDetailViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - ServicePackDetail ViewController
class ServicePackDetailViewController: BaseViewController {
    @IBOutlet weak var view_dismiss: UIView!
    @IBOutlet weak var servicePackDetail_containerView: UIView!
    var router: ServicePackDetailRouterProtocol!
    var viewModel: ServicePackDetailViewModelProtocol!
    
    
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    
    // MARK: - Init
    private func setupInit() {
        self.servicePackDetail_containerView.clipsToBounds = true
        self.servicePackDetail_containerView.cornerRadius = 25
        self.servicePackDetail_containerView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissTap(_:)))
        view_dismiss.addGestureRecognizer(tap)
    }
    @objc func dismissTap(_ sender: UITapGestureRecognizer? = nil) {
        self.dismiss(animated: true)
    }
    // MARK: - Action
    @IBAction func pcikNowTap(_ sender: UIButton) {
        self.router.gotoPaymentEWalletMethod()
    }
    
}

// MARK: - ServicePackDetail ViewProtocol
extension ServicePackDetailViewController: ServicePackDetailViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
