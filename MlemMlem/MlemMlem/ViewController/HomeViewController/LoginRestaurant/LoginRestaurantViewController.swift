//
//  
//  LoginRestaurantViewController.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol LoginRestaurantViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - LoginRestaurant ViewController
class LoginRestaurantViewController: BaseViewController {
    var router: LoginRestaurantRouterProtocol!
    var viewModel: LoginRestaurantViewModelProtocol!
    
    @IBOutlet weak var view_background: BackgroundView! {
        didSet {
            view_background.setTitle("").setBackListener{
                self.navigationController?.popViewController(animated: true)
            }.done()
            self.view_background.backButton.isHidden = false
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
    @IBAction func onGoToHomeScreen(_ sender: Any) {
        self.router.goToHomeScreen()
    }
}

// MARK: - LoginRestaurant ViewProtocol
extension LoginRestaurantViewController: LoginRestaurantViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
