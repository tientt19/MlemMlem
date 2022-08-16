//
//  
//  KitchenViewRouter.swift
//  MlemMlem
//
//  Created by TruongTV2 on 16/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol KitchenViewRouterProtocol {

}

// MARK: - KitchenView Router
class KitchenViewRouter {
    weak var viewController: KitchenViewViewController?
    
    static func setupModule() -> KitchenViewViewController {
        let viewController = KitchenViewViewController()
        let router = KitchenViewRouter()
        let interactorInput = KitchenViewInteractorInput()
        let viewModel = KitchenViewViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - KitchenView RouterProtocol
extension KitchenViewRouter: KitchenViewRouterProtocol {
    
}
