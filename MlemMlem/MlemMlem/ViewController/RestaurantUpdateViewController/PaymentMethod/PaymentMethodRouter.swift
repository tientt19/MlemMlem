//
//  
//  PaymentMethodRouter.swift
//  MlemMlem
//
//  Created by Valerian on 11/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol PaymentMethodRouterProtocol {
    func gotoMenu()
}

// MARK: - PaymentMethod Router
class PaymentMethodRouter {
    weak var viewController: PaymentMethodViewController?
    
    static func setupModule() -> PaymentMethodViewController {
        let viewController = PaymentMethodViewController()
        let router = PaymentMethodRouter()
        let interactorInput = PaymentMethodInteractorInput()
        let viewModel = PaymentMethodViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - PaymentMethod RouterProtocol
extension PaymentMethodRouter: PaymentMethodRouterProtocol {
    func gotoMenu() {
        let viewController = ListMenuRouter.setupModule()
        viewController.modalPresentationStyle = .fullScreen
        self.viewController?.navigationController?.show(viewController, sender: nil)
    }
}
