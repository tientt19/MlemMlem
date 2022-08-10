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
    @IBOutlet weak var lbl_servicePack: UILabel!
    @IBOutlet weak var view_background: UIView!
    @IBOutlet weak var img_element: UIImageView!
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
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor(red: 0.902, green: 0.192, blue: 0.263, alpha: 1).cgColor,
            UIColor(red: 0.996, green: 0.478, blue: 0.243, alpha: 1).cgColor,
            UIColor(red: 0.992, green: 0.702, blue: 0.333, alpha: 1).cgColor
        ]
        gradientLayer.locations = [0, 0.52, 1]
        gradientLayer.startPoint = CGPoint(x: 0.25, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 0.75, y: 0.5)
        gradientLayer.transform = CATransform3DMakeAffineTransform(CGAffineTransform(a: -1, b: 0.78, c: -0.78, d: -2.85, tx: 1.39, ty: 1.43))
        gradientLayer.frame = self.view.bounds
        
        gradientLayer.bounds = view.bounds.insetBy(dx: -0.5*view.bounds.size.width, dy: -0.5*view.bounds.size.height)
        gradientLayer.position = view.center
        
        self.view_background.layer.addSublayer(gradientLayer)
        self.view_background.bringSubviewToFront(self.img_element)
        self.view_background.bringSubviewToFront(self.lbl_servicePack)
        
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
