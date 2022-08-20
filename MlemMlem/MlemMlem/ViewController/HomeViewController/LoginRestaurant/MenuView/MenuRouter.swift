//
//  
//  MenuRouter.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol MenuRouterProtocol {

}

// MARK: - Menu Router
class MenuRouter {
    weak var viewController: MenuViewController?
    
    static func setupModule() -> MenuViewController {
        let viewController = MenuViewController()
        let router = MenuRouter()
        let interactorInput = MenuInteractorInput()
        let viewModel = MenuViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - Menu RouterProtocol
extension MenuRouter: MenuRouterProtocol {
    
}
