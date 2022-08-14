//
//  
//  ServicePackViewController.swift
//  MlemMlem
//
//  Created by TruongTV2 on 10/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol ServicePackViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - ServicePack ViewController
class ServicePackViewController: BaseViewController{

    
    @IBOutlet weak var view_servicePack: UIView!
    @IBOutlet weak var view_background: BackgroundView! {
        didSet {
            view_background.setTitle("Gói dịch vụ").setBackListener{
                self.navigationController?.popViewController(animated: true)
            }.done()
        }
    }
    @IBOutlet weak var tableView: UITableView!
    
    var router: ServicePackRouterProtocol!
    var viewModel: ServicePackViewModelProtocol!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    
    // MARK: - Init
    private func setupInit() {
        tableView.registerNib(ofType: ServicePackTableViewCell.self)
        tableView.delegate = self
        tableView.dataSource = self
        makeLinearGradient()
    }
    
    private func makeLinearGradient() {
        
        self.view_servicePack.clipsToBounds = true
        self.view_servicePack.cornerRadius = 35
        self.view_servicePack.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]

    }
    // MARK: - Action
    
}

// MARK: - ServicePack ViewProtocol
extension ServicePackViewController: ServicePackViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}

extension ServicePackViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ServicePackTableViewCell", for: indexPath) as? ServicePackTableViewCell else { return UITableViewCell() }
        cell.delegate = self
        return cell
    }
    
    
}
extension ServicePackViewController: ServicePackRouterProtocol{
    func gotoServicePackDetail() {
        self.router.gotoServicePackDetail()
    }
}
