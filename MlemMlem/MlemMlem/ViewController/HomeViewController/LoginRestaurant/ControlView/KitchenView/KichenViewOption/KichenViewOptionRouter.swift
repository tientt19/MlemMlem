//
//  
//  KichenViewOptionRouter.swift
//  MlemMlem
//
//  Created by TruongTV2 on 18/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol KichenViewOptionRouterProtocol {

}

// MARK: - KichenViewOption Router
class KichenViewOptionRouter {
    weak var viewController: KichenViewOptionViewController?
    
    static func setupModule() -> KichenViewOptionViewController {
        let viewController = KichenViewOptionViewController()
        let router = KichenViewOptionRouter()
        let interactorInput = KichenViewOptionInteractorInput()
        let viewModel = KichenViewOptionViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - KichenViewOption RouterProtocol
extension KichenViewOptionRouter: KichenViewOptionRouterProtocol {
    
}
