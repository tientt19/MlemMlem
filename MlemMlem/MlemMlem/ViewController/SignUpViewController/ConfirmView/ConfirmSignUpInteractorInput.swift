//
//  
//  ConfirmSignUpInteractorInput.swift
//  MlemMlem
//
//  Created by Valerian on 08/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol ConfirmSignUpInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol ConfirmSignUpInteractorOutputProtocol: AnyObject {
    
}

// MARK: - ConfirmSignUp InteractorInput
class ConfirmSignUpInteractorInput {
    weak var output: ConfirmSignUpInteractorOutputProtocol?
}

// MARK: - ConfirmSignUp InteractorInputProtocol
extension ConfirmSignUpInteractorInput: ConfirmSignUpInteractorInputProtocol {

}
