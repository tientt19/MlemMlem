//
//  
//  KitchenViewViewController.swift
//  MlemMlem
//
//  Created by TruongTV2 on 16/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol KitchenViewViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - KitchenView ViewController
class KitchenViewViewController: BaseViewController {
    var router: KitchenViewRouterProtocol!
    var viewModel: KitchenViewViewModelProtocol!
    
    @IBOutlet weak var view_background: BackgroundView! {
        didSet {
            view_background.setTitle("Kitchen View").setBackListener {
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
    
}

// MARK: - KitchenView ViewProtocol
extension KitchenViewViewController: KitchenViewViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
