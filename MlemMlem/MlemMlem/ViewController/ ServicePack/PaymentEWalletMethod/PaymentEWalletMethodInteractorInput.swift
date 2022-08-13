//
//  
//  PaymentEWalletMethodInteractorInput.swift
//  MlemMlem
//
//  Created by MaiNT6 on 8/13/22.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol PaymentEWalletMethodInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol PaymentEWalletMethodInteractorOutputProtocol: AnyObject {
    
}

// MARK: - PaymentEWalletMethod InteractorInput
class PaymentEWalletMethodInteractorInput {
    weak var output: PaymentEWalletMethodInteractorOutputProtocol?
}

// MARK: - PaymentEWalletMethod InteractorInputProtocol
extension PaymentEWalletMethodInteractorInput: PaymentEWalletMethodInteractorInputProtocol {

}
