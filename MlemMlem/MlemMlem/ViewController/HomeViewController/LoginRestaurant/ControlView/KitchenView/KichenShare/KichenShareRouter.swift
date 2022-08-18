//
//  
//  KichenShareRouter.swift
//  MlemMlem
//
//  Created by TruongTV2 on 18/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol KichenShareRouterProtocol {

}

// MARK: - KichenShare Router
class KichenShareRouter {
    weak var viewController: KichenShareViewController?
    
    static func setupModule() -> KichenShareViewController {
        let viewController = KichenShareViewController()
        let router = KichenShareRouter()
        let interactorInput = KichenShareInteractorInput()
        let viewModel = KichenShareViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - KichenShare RouterProtocol
extension KichenShareRouter: KichenShareRouterProtocol {
    
}
