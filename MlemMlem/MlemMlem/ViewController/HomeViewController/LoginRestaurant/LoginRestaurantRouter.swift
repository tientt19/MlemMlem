//
//  
//  LoginRestaurantRouter.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol LoginRestaurantRouterProtocol {
    func goToHomeScreen()
}

// MARK: - LoginRestaurant Router
class LoginRestaurantRouter {
    weak var viewController: LoginRestaurantViewController?
    
    static func setupModule() -> LoginRestaurantViewController {
        let viewController = LoginRestaurantViewController()
        let router = LoginRestaurantRouter()
        let interactorInput = LoginRestaurantInteractorInput()
        let viewModel = LoginRestaurantViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - LoginRestaurant RouterProtocol
extension LoginRestaurantRouter: LoginRestaurantRouterProtocol {
    func goToHomeScreen() {
        let viewController = MainTabbarController()
        viewController.modalPresentationStyle = .fullScreen
        self.viewController?.present(viewController, animated: true)
    }
}
