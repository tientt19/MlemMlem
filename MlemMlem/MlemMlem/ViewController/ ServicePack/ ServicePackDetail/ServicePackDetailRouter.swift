//
//  
//  ServicePackDetailRouter.swift
//  MlemMlem
//
//  Created by TruongTV2 on 10/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol ServicePackDetailRouterProtocol {
    func gotoPaymentMethod()
}

// MARK: - ServicePackDetail Router
class ServicePackDetailRouter {
    weak var viewController: ServicePackDetailViewController?
    
    static func setupModule() -> ServicePackDetailViewController {
        let viewController = ServicePackDetailViewController()
        let router = ServicePackDetailRouter()
        let interactorInput = ServicePackDetailInteractorInput()
        let viewModel = ServicePackDetailViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - ServicePackDetail RouterProtocol
extension ServicePackDetailRouter: ServicePackDetailRouterProtocol {
    func gotoPaymentMethod() {
        let viewController = PaymentMethodRouter.setupModule()
        viewController.modalPresentationStyle = .overFullScreen
        viewController.modalTransitionStyle = .crossDissolve
        self.viewController?.present(viewController, animated: true)
    }
}
