//
//  
//  SplashRouter.swift
//  MlemMlem
//
//  Created by Valerian on 07/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol SplashRouterProtocol {
    func gotoLoginScreen()
}

// MARK: - Splash Router
class SplashRouter {
    weak var viewController: SplashViewController?
    
    static func setupModule() -> SplashViewController {
        let viewController = SplashViewController()
        let router = SplashRouter()
        let interactorInput = SplashInteractorInput()
        let viewModel = SplashViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - Splash RouterProtocol
extension SplashRouter: SplashRouterProtocol {
    func gotoLoginScreen() {
        let viewController = BaseNavigationController(rootViewController: LoginRouter.setupModule())
        viewController.setHiddenNavigationBarViewControllers([LoginViewController.self,
                                                              SignUpViewController.self,
                                                              ConfirmSignUpViewController.self,
                                                              RestaurantUpdateViewController.self,
                                                              PaymentMethodViewController.self,
                                                              ServicePackViewController.self,
                                                              ListMenuViewController.self,
                                                              DishViewController.self])
        viewController.modalPresentationStyle = .fullScreen
        self.viewController?.present(viewController, animated: true)
    }
}
