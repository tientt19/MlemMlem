//
//  
//  ServicePackRouter.swift
//  MlemMlem
//
//  Created by TruongTV2 on 10/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol ServicePackRouterProtocol {
    func gotoServicePackDetail()
}

// MARK: - ServicePack Router
class ServicePackRouter {
    weak var viewController: ServicePackViewController?
    
    static func setupModule() -> ServicePackViewController {
        let viewController = ServicePackViewController()
        let router = ServicePackRouter()
        let interactorInput = ServicePackInteractorInput()
        let viewModel = ServicePackViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - ServicePack RouterProtocol
extension ServicePackRouter: ServicePackRouterProtocol {
    func gotoServicePackDetail() {
        let viewController = BaseNavigationController(rootViewController: ServicePackDetailRouter.setupModule())
        viewController.setHiddenNavigationBarViewControllers([ServicePackDetailViewController.self,
                                                              PaymentEWalletMethodViewController.self,
                                                              CreditCardViewController.self])
        viewController.modalPresentationStyle = .overFullScreen
        viewController.modalTransitionStyle = .crossDissolve
        self.viewController?.present(viewController, animated: true)
    }
}
