//
//  
//  PaymentMethodInteractorInput.swift
//  MlemMlem
//
//  Created by Valerian on 11/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol PaymentMethodInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol PaymentMethodInteractorOutputProtocol: AnyObject {
    
}

// MARK: - PaymentMethod InteractorInput
class PaymentMethodInteractorInput {
    weak var output: PaymentMethodInteractorOutputProtocol?
}

// MARK: - PaymentMethod InteractorInputProtocol
extension PaymentMethodInteractorInput: PaymentMethodInteractorInputProtocol {

}
