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
    
    @IBOutlet weak var view_background: UIView!
    @IBOutlet weak var view_loginComponents: UIView!
    @IBOutlet weak var img_element: UIImageView!
    @IBOutlet weak var lbl_login: UILabel!
    @IBOutlet weak var btn_back: UIButton!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    
    // MARK: - Init
    private func setupInit() {
        self.makeLinearGradient()
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
        self.view_background.bringSubviewToFront(self.lbl_login)
        self.view_background.bringSubviewToFront(self.view_loginComponents)
        self.view_background.bringSubviewToFront(self.btn_back)
        
        self.view_loginComponents.clipsToBounds = true
        self.view_loginComponents.cornerRadius = 35
        self.view_loginComponents.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
    
    // MARK: - Action
    
    @IBAction func onDismis(_ sender: UIButton) {
        self.dismiss(animated: true)
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
