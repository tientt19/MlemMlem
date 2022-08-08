//
//  
//  SignUpRouter.swift
//  MlemMlem
//
//  Created by Tiến Trần on 08/08/2022.
//
//

import UIKit

// MARK: - RouterProtocol
protocol SignUpRouterProtocol {
    func onConfirmSignUp()
}

// MARK: - SignUp Router
class SignUpRouter {
    weak var viewController: SignUpViewController?
    
    static func setupModule() -> SignUpViewController {
        let viewController = SignUpViewController()
        let router = SignUpRouter()
        let interactorInput = SignUpInteractorInput()
        let viewModel = SignUpViewModel(interactor: interactorInput)
        
        viewController.viewModel = viewModel
        viewController.router = router
        viewModel.view = viewController
        interactorInput.output = viewModel
        router.viewController = viewController
        
        return viewController
    }
}

// MARK: - SignUp RouterProtocol
extension SignUpRouter: SignUpRouterProtocol {
    func onConfirmSignUp() {
        let viewController = ConfirmSignUpRouter.setupModule()
        viewController.modalPresentationStyle = .fullScreen
        self.viewController?.navigationController?.show(viewController, sender: nil)
    }
}
