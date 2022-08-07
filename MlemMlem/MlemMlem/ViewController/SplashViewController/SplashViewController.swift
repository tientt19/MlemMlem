//
//  
//  SplashViewController.swift
//  MlemMlem
//
//  Created by Valerian on 07/08/2022.
//
//

import UIKit

// MARK: - ViewProtocol
protocol SplashViewProtocol: AnyObject {
    func showHud()
    func hideHud()
    
    //UITableView
    //func onReloadData()
}

// MARK: - Splash ViewController
class SplashViewController: BaseViewController {
    var router: SplashRouterProtocol!
    var viewModel: SplashViewModelProtocol!
    
    @IBOutlet weak var view_groundElement: UIImageView!
    @IBOutlet weak var view_logo: UIView!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupInit()
        self.viewModel.onViewDidLoad()
    }
    
    // MARK: - Init
    private func setupInit() {
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
        self.view.layer.addSublayer(gradientLayer)
        
        self.view.bringSubviewToFront(self.view_groundElement)
        self.view.bringSubviewToFront(self.view_logo)
    }
    
    // MARK: - Action
    
}

// MARK: - Splash ViewProtocol
extension SplashViewController: SplashViewProtocol {
    func showHud() {
        self.showProgressHud()
    }
    
    func hideHud() {
        self.hideProgressHud()
    }
}
