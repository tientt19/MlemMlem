//
//  
//  PopupPaymentSuccessRouter.swift
//  MlemMlem
//
//  Created by TruongTV2 on 11/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol PopupPaymentSuccessRouterProtocol {

}

// MARK: - PopupPaymentSuccess Router
class PopupPaymentSuccessRouter {
    weak var viewController: PopupPaymentSuccessViewController?
    
    static func setupModule() -> PopupPaymentSuccessViewController {
        let viewController = PopupPaymentSuccessViewController()
        let router = PopupPaymentSuccessRouter()
        let interactorInput = PopupPaymentSuccessInteractorInput()
        let viewModel = PopupPaymentSuccessViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - PopupPaymentSuccess RouterProtocol
extension PopupPaymentSuccessRouter: PopupPaymentSuccessRouterProtocol {
    
}
