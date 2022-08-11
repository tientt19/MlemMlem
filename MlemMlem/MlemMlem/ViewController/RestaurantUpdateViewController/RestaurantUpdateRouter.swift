//
//  
//  RestaurantUpdateRouter.swift
//  MlemMlem
//
//  Created by Valerian on 11/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol RestaurantUpdateRouterProtocol {
    func gotoPaymentMethod()
}

// MARK: - RestaurantUpdate Router
class RestaurantUpdateRouter {
    weak var viewController: RestaurantUpdateViewController?
    
    static func setupModule() -> RestaurantUpdateViewController {
        let viewController = RestaurantUpdateViewController()
        let router = RestaurantUpdateRouter()
        let interactorInput = RestaurantUpdateInteractorInput()
        let viewModel = RestaurantUpdateViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - RestaurantUpdate RouterProtocol
extension RestaurantUpdateRouter: RestaurantUpdateRouterProtocol {
    func gotoPaymentMethod() {
        let viewController = PaymentMethodRouter.setupModule()
        viewController.modalPresentationStyle = .fullScreen
        self.viewController?.navigationController?.show(viewController, sender: nil)
    }
}
