//
//  
//  ControlRouter.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol ControlRouterProtocol {
    func gotoKitchenView()
}

// MARK: - Control Router
class ControlRouter {
    weak var viewController: ControlViewController?
    
    static func setupModule() -> ControlViewController {
        let viewController = ControlViewController()
        let router = ControlRouter()
        let interactorInput = ControlInteractorInput()
        let viewModel = ControlViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - Control RouterProtocol
extension ControlRouter: ControlRouterProtocol {
    func gotoKitchenView() {
        let viewController = KitchenViewRouter.setupModule()
        viewController.modalPresentationStyle = .fullScreen
        self.viewController?.present(viewController, animated: true)
    }
}
