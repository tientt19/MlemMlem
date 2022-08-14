//
//  
//  AccountInteractorInput.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol AccountInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol AccountInteractorOutputProtocol: AnyObject {
    
}

// MARK: - Account InteractorInput
class AccountInteractorInput {
    weak var output: AccountInteractorOutputProtocol?
}

// MARK: - Account InteractorInputProtocol
extension AccountInteractorInput: AccountInteractorInputProtocol {

}
