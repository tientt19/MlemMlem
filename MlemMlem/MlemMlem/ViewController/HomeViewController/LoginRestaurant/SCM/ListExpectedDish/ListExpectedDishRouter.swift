//
//  
//  ListExpectedDishRouter.swift
//  MlemMlem
//
//  Created by TruongTV2 on 24/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol ListExpectedDishRouterProtocol {

}

// MARK: - ListExpectedDish Router
class ListExpectedDishRouter {
    weak var viewController: ListExpectedDishViewController?
    
    static func setupModule() -> ListExpectedDishViewController {
        let viewController = ListExpectedDishViewController()
        let router = ListExpectedDishRouter()
        let interactorInput = ListExpectedDishInteractorInput()
        let viewModel = ListExpectedDishViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - ListExpectedDish RouterProtocol
extension ListExpectedDishRouter: ListExpectedDishRouterProtocol {
    
}
