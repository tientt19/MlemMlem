//
//  
//  ConfirmSignUpViewController.swift
//  MlemMlem
//
//  Created by Valerian on 08/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol ConfirmSignUpViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - ConfirmSignUp ViewController
class ConfirmSignUpViewController: BaseViewController {
    var router: ConfirmSignUpRouterProtocol!
    var viewModel: ConfirmSignUpViewModelProtocol!
    
    @IBOutlet weak var view_Components: UIView!
    @IBOutlet weak var view_background: BackgroundView! {
        didSet {
            view_background.setTitle("Mã xác nhận").setBackListener{
                self.navigationController?.popViewController(animated: true)
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
        self.view_Components.clipsToBounds = true
        self.view_Components.cornerRadius = 35
        self.view_Components.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    // MARK: - Action
    @IBAction func registerTap(_ sender: UIButton) {
        self.router.gotoServicePack()
    }
}

// MARK: - ConfirmSignUp ViewProtocol
extension ConfirmSignUpViewController: ConfirmSignUpViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
