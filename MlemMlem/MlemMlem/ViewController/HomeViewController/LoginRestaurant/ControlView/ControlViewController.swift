//
//  
//  ControlViewController.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol ControlViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - Control ViewController
class ControlViewController: BaseViewController {
    var router: ControlRouterProtocol!
    var viewModel: ControlViewModelProtocol!
    
    
    @IBOutlet weak var view_background: BackgroundView! {
        didSet {
            view_background.setTitle("Trang chủ").done()
        }
    }
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    // MARK: - Init
    private func setupInit() {

    }
    
    // MARK: - Action
    @IBAction func onKitchenAction(_ sender: UIButton) {
        router.gotoKitchenView()
    }
    
}

// MARK: - Control ViewProtocol
extension ControlViewController: ControlViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
