//
//  
//  HomeRouter.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol HomeRouterProtocol {
    func goToLoginRestaurant()
}

// MARK: - Home Router
class HomeRouter {
    weak var viewController: HomeViewController?
    
    static func setupModule() -> HomeViewController {
        let viewController = HomeViewController()
        let router = HomeRouter()
        let interactorInput = HomeInteractorInput()
        let viewModel = HomeViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - Home RouterProtocol
extension HomeRouter: HomeRouterProtocol {
    func goToLoginRestaurant() {
        let viewController = LoginRestaurantRouter.setupModule()
        viewController.modalPresentationStyle = .fullScreen
        self.viewController?.navigationController?.pushViewController(viewController, animated: true)
    }
}
