//
//  
//  AccountRouter.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol AccountRouterProtocol {

}

// MARK: - Account Router
class AccountRouter {
    weak var viewController: AccountViewController?
    
    static func setupModule() -> AccountViewController {
        let viewController = AccountViewController()
        let router = AccountRouter()
        let interactorInput = AccountInteractorInput()
        let viewModel = AccountViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - Account RouterProtocol
extension AccountRouter: AccountRouterProtocol {
    
}
