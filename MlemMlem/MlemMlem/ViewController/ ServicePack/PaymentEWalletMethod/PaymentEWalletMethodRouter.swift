//
//  
//  PaymentEWalletMethodRouter.swift
//  MlemMlem
//
//  Created by MaiNT6 on 8/13/22.
//
//

import UIKit

// MARK: - RouterProtocol
protocol PaymentEWalletMethodRouterProtocol {
    func gotoCreditCard()
}

// MARK: - PaymentEWalletMethod Router
class PaymentEWalletMethodRouter {
    weak var viewController: PaymentEWalletMethodViewController?
    
    static func setupModule() -> PaymentEWalletMethodViewController {
        let viewController = PaymentEWalletMethodViewController()
        let router = PaymentEWalletMethodRouter()
        let interactorInput = PaymentEWalletMethodInteractorInput()
        let viewModel = PaymentEWalletMethodViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - PaymentEWalletMethod RouterProtocol
extension PaymentEWalletMethodRouter: PaymentEWalletMethodRouterProtocol {
    func gotoCreditCard() {
        let viewController = CreditCardRouter.setupModule()
        self.viewController?.navigationController?.pushViewController(viewController, animated: true)
    }
}
