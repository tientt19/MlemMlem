//
//  
//  CreditCardRouter.swift
//  MlemMlem
//
//  Created by TruongTV2 on 11/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol CreditCardRouterProtocol {
    func gotoPaymentSuccess()
}

// MARK: - CreditCard Router
class CreditCardRouter {
    weak var viewController: CreditCardViewController?
    
    static func setupModule() -> CreditCardViewController {
        let viewController = CreditCardViewController()
        let router = CreditCardRouter()
        let interactorInput = CreditCardInteractorInput()
        let viewModel = CreditCardViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - CreditCard RouterProtocol
extension CreditCardRouter: CreditCardRouterProtocol {
    func gotoPaymentSuccess() {
        let viewController = PopupPaymentSuccessRouter.setupModule()
        viewController.modalPresentationStyle = .overFullScreen
        viewController.modalTransitionStyle = .crossDissolve
        self.viewController?.present(viewController, animated: true)
    }
}
