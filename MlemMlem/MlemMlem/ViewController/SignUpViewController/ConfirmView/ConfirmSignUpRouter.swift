//
//  
//  ConfirmSignUpRouter.swift
//  MlemMlem
//
//  Created by Valerian on 08/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol ConfirmSignUpRouterProtocol {
    func gotoServicePack()
}

// MARK: - ConfirmSignUp Router
class ConfirmSignUpRouter {
    weak var viewController: ConfirmSignUpViewController?
    
    static func setupModule() -> ConfirmSignUpViewController {
        let viewController = ConfirmSignUpViewController()
        let router = ConfirmSignUpRouter()
        let interactorInput = ConfirmSignUpInteractorInput()
        let viewModel = ConfirmSignUpViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - ConfirmSignUp RouterProtocol
extension ConfirmSignUpRouter: ConfirmSignUpRouterProtocol {
    func gotoServicePack() {
        let viewController = ServicePackRouter.setupModule()
        viewController.modalPresentationStyle = .fullScreen
        self.viewController?.navigationController?.pushViewController(viewController, animated: true)
    }
}
