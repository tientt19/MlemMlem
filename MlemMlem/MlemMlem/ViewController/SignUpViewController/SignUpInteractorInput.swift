//
//  
//  SignUpInteractorInput.swift
//  MlemMlem
//
//  Created by Tiến Trần on 08/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol SignUpInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol SignUpInteractorOutputProtocol: AnyObject {
    
}

// MARK: - SignUp InteractorInput
class SignUpInteractorInput {
    weak var output: SignUpInteractorOutputProtocol?
}

// MARK: - SignUp InteractorInputProtocol
extension SignUpInteractorInput: SignUpInteractorInputProtocol {

}
