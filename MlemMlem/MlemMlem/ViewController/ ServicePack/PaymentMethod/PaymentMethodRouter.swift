//
//  
//  PaymentMethodRouter.swift
//  MlemMlem
//
//  Created by TruongTV2 on 11/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol PaymentMethodRouterProtocol {
    func gotoCreditCard()
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
    func gotoCreditCard() {
        let viewController = CreditCardRouter.setupModule()
        viewController.modalPresentationStyle = .overFullScreen
        viewController.modalTransitionStyle = .crossDissolve
        self.viewController?.present(viewController, animated: true)
    }
}
