//
//  
//  LoginInteractorInput.swift
//  MlemMlem
//
//  Created by Valerian on 07/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol LoginInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol LoginInteractorOutputProtocol: AnyObject {
    
}

// MARK: - Login InteractorInput
class LoginInteractorInput {
    weak var output: LoginInteractorOutputProtocol?
}

// MARK: - Login InteractorInputProtocol
extension LoginInteractorInput: LoginInteractorInputProtocol {

}
