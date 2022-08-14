//
//  
//  SignUpViewController.swift
//  MlemMlem
//
//  Created by Tiến Trần on 08/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol SignUpViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - SignUp ViewController
class SignUpViewController: BaseViewController {
    var router: SignUpRouterProtocol!
    var viewModel: SignUpViewModelProtocol!
    
    @IBOutlet weak var view_loginComponents: UIView!
    @IBOutlet weak var view_background: BackgroundView! {
        didSet {
            view_background.setTitle("Đăng ký").setBackListener{
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
        self.view_loginComponents.clipsToBounds = true
        self.view_loginComponents.cornerRadius = 35
        self.view_loginComponents.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    // MARK: - Action
    @IBAction func onGotoConfirmSignUp(_ sender: UIButton) {
        self.router.onConfirmSignUp()
    }
}

// MARK: - SignUp ViewProtocol
extension SignUpViewController: SignUpViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
