//
//  
//  ListMenuRouter.swift
//  MlemMlem
//
//  Created by MaiNT6 on 8/13/22.
//
//

import UIKit

// MARK: - RouterProtocol
protocol ListMenuRouterProtocol {
    func gotoMenuDish()
}

// MARK: - ListMenu Router
class ListMenuRouter {
    weak var viewController: ListMenuViewController?
    
    static func setupModule() -> ListMenuViewController {
        let viewController = ListMenuViewController()
        let router = ListMenuRouter()
        let interactorInput = ListMenuInteractorInput()
        let viewModel = ListMenuViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - ListMenu RouterProtocol
extension ListMenuRouter: ListMenuRouterProtocol {
    func gotoMenuDish() {
        let viewController = DishRouter.setupModule()
        self.viewController?.navigationController?.pushViewController(viewController, animated: true)
    }
    
    
}
