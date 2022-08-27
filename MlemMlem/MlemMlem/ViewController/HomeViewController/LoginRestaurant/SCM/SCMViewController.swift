//
//  
//  SCMViewController.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol SCMViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - SCM ViewController
class SCMViewController: BaseViewController {
    var router: SCMRouterProtocol!
    var viewModel: SCMViewModelProtocol!
    
    
    @IBOutlet weak var view_background: BackgroundView!{
        didSet {
            view_background.setTitle("Dự Báo Bán Hàng").done()
        }
    }
    @IBOutlet weak var view_expectedRevenue: UIView!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view_expectedRevenue.setGradientBackground(colorLeft: .OrangeFDB355, colorRight: .OrangeE63143)
    }
    // MARK: - Init
    private func setupInit() {

    }
    
    // MARK: - Action
    
}

// MARK: - SCM ViewProtocol
extension SCMViewController: SCMViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
