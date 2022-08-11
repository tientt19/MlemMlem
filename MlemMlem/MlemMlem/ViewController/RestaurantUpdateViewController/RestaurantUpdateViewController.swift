//
//  
//  RestaurantUpdateViewController.swift
//  MlemMlem
//
//  Created by Valerian on 11/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol RestaurantUpdateViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - RestaurantUpdate ViewController
class RestaurantUpdateViewController: BaseViewController {
    var router: RestaurantUpdateRouterProtocol!
    var viewModel: RestaurantUpdateViewModelProtocol!
    
    @IBOutlet weak var view_Content: UIView!

    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    
    // MARK: - Init
    private func setupInit() {
        self.view_Content.clipsToBounds = true
        self.view_Content.cornerRadius = 15
        self.view_Content.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    // MARK: - Action
    @IBAction func onPaymentAction(_ sender: Any) {
        self.router.gotoPaymentMethod()
    }
}

// MARK: - RestaurantUpdate ViewProtocol
extension RestaurantUpdateViewController: RestaurantUpdateViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
