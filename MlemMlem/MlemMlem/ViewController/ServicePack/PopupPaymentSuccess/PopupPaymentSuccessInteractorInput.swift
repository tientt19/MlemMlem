//
//  
//  PopupPaymentSuccessInteractorInput.swift
//  MlemMlem
//
//  Created by TruongTV2 on 11/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol PopupPaymentSuccessInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol PopupPaymentSuccessInteractorOutputProtocol: AnyObject {
    
}

// MARK: - PopupPaymentSuccess InteractorInput
class PopupPaymentSuccessInteractorInput {
    weak var output: PopupPaymentSuccessInteractorOutputProtocol?
}

// MARK: - PopupPaymentSuccess InteractorInputProtocol
extension PopupPaymentSuccessInteractorInput: PopupPaymentSuccessInteractorInputProtocol {

}
