//
//  
//  CreditCardInteractorInput.swift
//  MlemMlem
//
//  Created by TruongTV2 on 11/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol CreditCardInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol CreditCardInteractorOutputProtocol: AnyObject {
    
}

// MARK: - CreditCard InteractorInput
class CreditCardInteractorInput {
    weak var output: CreditCardInteractorOutputProtocol?
}

// MARK: - CreditCard InteractorInputProtocol
extension CreditCardInteractorInput: CreditCardInteractorInputProtocol {

}
