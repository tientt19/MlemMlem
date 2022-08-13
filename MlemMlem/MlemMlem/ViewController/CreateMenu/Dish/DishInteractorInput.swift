//
//  
//  DishInteractorInput.swift
//  MlemMlem
//
//  Created by MaiNT6 on 8/13/22.
//
//

import UIKit

// MARK: - Interactor Input Protocol
protocol DishInteractorInputProtocol {

}

// MARK: - Interactor Output Protocol
protocol DishInteractorOutputProtocol: AnyObject {
    
}

// MARK: - Dish InteractorInput
class DishInteractorInput {
    weak var output: DishInteractorOutputProtocol?
}

// MARK: - Dish InteractorInputProtocol
extension DishInteractorInput: DishInteractorInputProtocol {

}
