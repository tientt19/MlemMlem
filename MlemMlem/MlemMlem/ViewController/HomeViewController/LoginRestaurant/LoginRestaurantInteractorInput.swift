//
//  
//  LoginRestaurantInteractorInput.swift
//  MlemMlem
//
//  Created by Valerian on 14/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol LoginRestaurantInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol LoginRestaurantInteractorOutputProtocol: AnyObject {
    
}

// MARK: - LoginRestaurant InteractorInput
class LoginRestaurantInteractorInput {
    weak var output: LoginRestaurantInteractorOutputProtocol?
}

// MARK: - LoginRestaurant InteractorInputProtocol
extension LoginRestaurantInteractorInput: LoginRestaurantInteractorInputProtocol {

}
