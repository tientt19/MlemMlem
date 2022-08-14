//
//  
//  SCMRouter.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol SCMRouterProtocol {

}

// MARK: - SCM Router
class SCMRouter {
    weak var viewController: SCMViewController?
    
    static func setupModule() -> SCMViewController {
        let viewController = SCMViewController()
        let router = SCMRouter()
        let interactorInput = SCMInteractorInput()
        let viewModel = SCMViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - SCM RouterProtocol
extension SCMRouter: SCMRouterProtocol {
    
}
