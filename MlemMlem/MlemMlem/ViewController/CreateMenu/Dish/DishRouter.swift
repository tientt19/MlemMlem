//
//  
//  DishRouter.swift
//  MlemMlem
//
//  Created by MaiNT6 on 8/13/22.
//
//

import UIKit

// MARK: - RouterProtocol
protocol DishRouterProtocol {
    func goToHome()
}

// MARK: - Dish Router
class DishRouter {
    weak var viewController: DishViewController?
    
    static func setupModule() -> DishViewController {
        let viewController = DishViewController()
        let router = DishRouter()
        let interactorInput = DishInteractorInput()
        let viewModel = DishViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - Dish RouterProtocol
extension DishRouter: DishRouterProtocol {
    func goToHome() {
        let viewController = HomeRouter.setupModule()
        viewController.modalPresentationStyle = .fullScreen
        self.viewController?.navigationController?.pushViewController(viewController, animated: true)
    }
}
