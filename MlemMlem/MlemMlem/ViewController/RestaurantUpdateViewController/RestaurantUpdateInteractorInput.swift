//
//  
//  RestaurantUpdateInteractorInput.swift
//  MlemMlem
//
//  Created by Valerian on 11/08/2022.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol RestaurantUpdateInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol RestaurantUpdateInteractorOutputProtocol: AnyObject {
    
}

// MARK: - RestaurantUpdate InteractorInput
class RestaurantUpdateInteractorInput {
    weak var output: RestaurantUpdateInteractorOutputProtocol?
}

// MARK: - RestaurantUpdate InteractorInputProtocol
extension RestaurantUpdateInteractorInput: RestaurantUpdateInteractorInputProtocol {

}
